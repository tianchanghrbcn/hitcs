package client;

import common.LibraryService;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.List;
import java.util.Scanner;

/**
 * RMI 图书馆客户端
 * 负责与服务器端的 LibraryService 进行远程交互，
 * 在命令行中为用户提供查看 / 借阅 / 归还 图书的功能。
 */
public class LibraryClient {

    public static void main(String[] args) {
        try {
            // ---------- 1. 连接 RMI 注册表 ----------
            // 默认连接本机 localhost，可在启动时通过命令行参数传入 IP / 主机名
            String host = args.length > 0 ? args[0] : "localhost";
            // 获取远程注册表（端口 1099 为默认 RMI 端口）
            Registry registry = LocateRegistry.getRegistry(host, 1099);
            // 查找远程对象并返回其代理
            LibraryService service = (LibraryService) registry.lookup("LibraryService");

            // ---------- 2. 命令行交互 ----------
            Scanner sc = new Scanner(System.in);
            System.out.print("请输入用户名: ");
            String user = sc.nextLine().trim();      // 记录当前客户端用户名

            while (true) {
                // 打印主菜单
                System.out.println("\n====== 图书馆菜单 ======");
                System.out.println("1. 查看图书列表");
                System.out.println("2. 借阅图书");
                System.out.println("3. 归还图书");
                System.out.println("0. 退出");
                System.out.print("请选择操作: ");
                String choice = sc.nextLine().trim();

                switch (choice) {
                    /* ----- 2.1 查看图书列表 ----- */
                    case "1" -> {
                        List<String> books = service.listBooks();   // 调用远程方法
                        System.out.println("---- 图书列表 ----");
                        books.forEach(System.out::println);
                    }
                    /* ----- 2.2 借阅图书 ----- */
                    case "2" -> {
                        System.out.print("输入要借阅的图书标题: ");
                        String titleBorrow = sc.nextLine().trim();
                        System.out.println(service.borrowBook(titleBorrow, user));
                    }
                    /* ----- 2.3 归还图书 ----- */
                    case "3" -> {
                        System.out.print("输入要归还的图书标题: ");
                        String titleReturn = sc.nextLine().trim();
                        System.out.println(service.returnBook(titleReturn, user));
                    }
                    /* ----- 2.4 退出客户端 ----- */
                    case "0" -> {
                        System.out.println("Bye~");
                        System.exit(0);
                    }
                    /* ----- 2.5 输入不合法 ----- */
                    default -> System.out.println("无效选择");
                }
            }
        } catch (Exception e) {
            // 捕获并打印任何异常（如服务器未启动、网络异常等）
            e.printStackTrace();
        }
    }
}
