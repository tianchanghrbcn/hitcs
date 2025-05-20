package test;

import common.LibraryService;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.*;
import java.util.concurrent.CountDownLatch;
import java.util.stream.Collectors;

/**
 * 更复杂的并发&容错验收脚本
 *  - 5 本书 (动态获取)，5 个用户并发
 *  - 验证排他、顺序借阅、非法归还、借不存在的书
 *  - 最终确保所有书恢复可借状态
 */
public class LibrarySystemTest {

    /** 并发用户 */
    private static final List<String> USERS =
            List.of("Alice", "Bob", "Charlie", "Dave", "Eve");

    public static void main(String[] args) throws Exception {
        String host = args.length > 0 ? args[0] : "localhost";
        Registry registry = LocateRegistry.getRegistry(host, 1099);
        LibraryService service = (LibraryService) registry.lookup("LibraryService");

        /* ---------- STEP 0  列出全部图书 ---------- */
        List<String> allBookLines = service.listBooks();
        List<String> allTitles = stripTitles(allBookLines);
        System.out.println("=== 图书初始状态 ===");
        allBookLines.forEach(System.out::println);
        System.out.println("-------------------\n");

        /* ---------- STEP 1  并发抢第一本 ---------- */
        String firstTitle = allTitles.get(0);
        System.out.printf("=== STEP1: 5 人同时抢《%s》 ===%n", firstTitle);

        CountDownLatch ready = new CountDownLatch(USERS.size());
        CountDownLatch start = new CountDownLatch(1);

        List<Thread> threads = new ArrayList<>();
        USERS.forEach(user -> {
            Thread t = new Thread(() -> {
                try {
                    ready.countDown();
                    start.await();
                    System.out.printf("→ %s 尝试借阅: %s%n",
                            user, service.borrowBook(firstTitle, user));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            });
            threads.add(t);
            t.start();
        });
        ready.await(); // 等所有线程准备好
        start.countDown(); // 同时发令
        for (Thread t : threads) t.join();

        /* ---------- STEP 2  查看结果 ---------- */
        System.out.println("\n=== STEP2: 经过抢占后的图书列表 ===");
        service.listBooks().forEach(System.out::println);

        /* ---------- STEP 3  顺序借阅其余书 ---------- */
        System.out.println("\n=== STEP3: 依次借阅剩余图书 ===");
        for (int i = 1; i < allTitles.size(); i++) {
            String title = allTitles.get(i);
            String user = USERS.get(i % USERS.size());
            System.out.printf("%s 借《%s》: %s%n",
                    user, title, service.borrowBook(title, user));
        }

        /* ---------- STEP 4  错误场景 ---------- */
        System.out.println("\n=== STEP4: 错误场景验证 ===");
        // 非借阅人归还
        System.out.println("⚠ Bob 试图归还《" + firstTitle + "》: "
                + service.returnBook(firstTitle, "Bob"));
        // 借不存在的书
        System.out.println("⚠ Charlie 试图借《不存在的书》: "
                + service.borrowBook("不存在的书", "Charlie"));

        /* ---------- STEP 5  正确归还 ---------- */
        System.out.println("\n=== STEP5: 归还全部已借图书 ===");
        // 归还第一本：找到真正借到的人
        String borrowerFirst = findBorrower(service, firstTitle);
        if (borrowerFirst != null) {
            System.out.printf("%s 归还《%s》: %s%n", borrowerFirst, firstTitle,
                    service.returnBook(firstTitle, borrowerFirst));
        }
        // 归还其余
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

    /** 去掉 "(...)" 获取纯书名 */
    private static List<String> stripTitles(List<String> raw) {
        return raw.stream()
                .map(line -> line.split(" \\(")[0])
                .collect(Collectors.toList());
    }

    /** 根据 listBooks 字符串解析出当前借阅人 */
    private static String findBorrower(LibraryService svc, String title) throws Exception {
        for (String line : svc.listBooks()) {
            if (line.startsWith(title) && line.contains("已借出给")) {
                int idx = line.indexOf("已借出给") + "已借出给 ".length();
                int end = line.lastIndexOf(')');
                return line.substring(idx, end).trim();
            }
        }
        return null;
    }
}
