package test;

import common.LibraryService;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.*;
import java.util.concurrent.CountDownLatch;
import java.util.stream.Collectors;

/**
 * 更复杂的并发 & 容错验收脚本
 *
 * 功能点：
 *   1. 动态获取服务器全部书籍（无硬编码数量）
 *   2. 5 个用户并发抢第一本书，验证排他性
 *   3. 依次借阅其余书，验证顺序借阅
 *   4. 非借阅人归还、借不存在书等错误场景
 *   5. 正确归还所有书，最终状态应全部 “可借”
 *
 * 说明：
 *   - 仅通过远程接口 LibraryService 与服务器交互，
 *     不做任何本地缓存，保证结果实时、准确。
 *   - 使用 CountDownLatch 对齐并发起点，模拟真正“同时”抢书。
 */
public class LibrarySystemTest {

    /** 并发用户列表（5 人） */
    private static final List<String> USERS =
            List.of("Alice", "Bob", "Charlie", "Dave", "Eve");

    public static void main(String[] args) throws Exception {

        /* ================= 初始化 RMI 连接 ================= */
        // 如传入服务器 IP 则使用该 IP，否则默认 localhost
        String host = args.length > 0 ? args[0] : "localhost";

        // 获取远程 RMI 注册表并查找服务
        Registry registry = LocateRegistry.getRegistry(host, 1099);
        LibraryService service =
                (LibraryService) registry.lookup("LibraryService");

        /* ---------- STEP 0  列出全部图书 ---------- */
        // 获取原始字符串行，如 "Java 编程思想 (可借)"
        List<String> allBookLines = service.listBooks();
        // 提取纯书名列表
        List<String> allTitles = stripTitles(allBookLines);

        System.out.println("=== 图书初始状态 ===");
        allBookLines.forEach(System.out::println);
        System.out.println("-------------------\n");

        /* ---------- STEP 1  并发抢第一本 ---------- */
        String firstTitle = allTitles.get(0);
        System.out.printf("=== STEP1: 5 人同时抢《%s》 ===%n", firstTitle);

        // 两个栅栏：ready 确保线程就绪，start 用作统一起跑
        CountDownLatch ready = new CountDownLatch(USERS.size());
        CountDownLatch start = new CountDownLatch(1);

        List<Thread> threads = new ArrayList<>();
        USERS.forEach(user -> {
            Thread t = new Thread(() -> {
                try {
                    // 告诉主线程“我准备就绪”
                    ready.countDown();
                    // 等待开始信号
                    start.await();
                    // 发起借阅
                    System.out.printf("→ %s 尝试借阅: %s%n",
                            user, service.borrowBook(firstTitle, user));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            });
            threads.add(t);
            t.start();
        });

        // 等待 5 个线程全部就绪后，一起开始
        ready.await();
        start.countDown();
        // 等待所有并发线程结束
        for (Thread t : threads) t.join();

        /* ---------- STEP 2  查看结果 ---------- */
        System.out.println("\n=== STEP2: 经过抢占后的图书列表 ===");
        service.listBooks().forEach(System.out::println);

        /* ---------- STEP 3  顺序借阅其余书 ---------- */
        System.out.println("\n=== STEP3: 依次借阅剩余图书 ===");
        for (int i = 1; i < allTitles.size(); i++) {
            String title = allTitles.get(i);
            // 依次分配给不同用户（循环使用）
            String user = USERS.get(i % USERS.size());
            System.out.printf("%s 借《%s》: %s%n",
                    user, title, service.borrowBook(title, user));
        }

        /* ---------- STEP 4  错误场景 ---------- */
        System.out.println("\n=== STEP4: 错误场景验证 ===");
        // (1) 非借阅人归还
        System.out.println("⚠ Bob 试图归还《" + firstTitle + "》: "
                + service.returnBook(firstTitle, "Bob"));
        // (2) 借不存在的书
        System.out.println("⚠ Charlie 试图借《不存在的书》: "
                + service.borrowBook("不存在的书", "Charlie"));

        /* ---------- STEP 5  正确归还 ---------- */
        System.out.println("\n=== STEP5: 归还全部已借图书 ===");
        // 归还抢占阶段的第一本书：先确定真正的借阅人
        String borrowerFirst = findBorrower(service, firstTitle);
        if (borrowerFirst != null) {
            System.out.printf("%s 归还《%s》: %s%n",
                    borrowerFirst, firstTitle,
                    service.returnBook(firstTitle, borrowerFirst));
        }
        // 归还其余顺序借阅的书
        for (int i = 1; i < allTitles.size(); i++) {
            String title = allTitles.get(i);
            String borrower = findBorrower(service, title);
            if (borrower != null) {
                System.out.printf("%s 归还《%s》: %s%n",
                        borrower, title, service.returnBook(title, borrower));
            }
        }

        /* ---------- STEP 6  最终状态 ---------- */
        System.out.println("\n=== STEP6: 最终图书列表(应全部可借) ===");
        service.listBooks().forEach(System.out::println);
    }

    /* ----------- 工具函数 ----------- */

    /**
     * 从服务器返回的字符串中去掉括号及状态，只保留书名
     * 例： "Java 编程思想 (可借)" -> "Java 编程思想"
     */
    private static List<String> stripTitles(List<String> raw) {
        return raw.stream()
                .map(line -> line.split(" \\(")[0])
                .collect(Collectors.toList());
    }

    /**
     * 在服务器 listBooks 的结果中解析出某书当前借阅人
     * 若返回 null 则表示该书未被借出或不存在
     */
    private static String findBorrower(LibraryService svc, String title) throws Exception {
        for (String line : svc.listBooks()) {
            // 找到以该书名开头且包含“已借出给”字段的行
            if (line.startsWith(title) && line.contains("已借出给")) {
                int idx = line.indexOf("已借出给") + "已借出给 ".length();
                int end = line.lastIndexOf(')');
                return line.substring(idx, end).trim();
            }
        }
        return null;
    }
}
