package client;

        import common.LibraryService;

        import java.rmi.registry.LocateRegistry;
        import java.rmi.registry.Registry;
        import java.util.List;
        import java.util.Scanner;

/**
 * RMI 图书馆客户端
 */
public class LibraryClient {

    public static void main(String[] args) {
        try {
            // 默认连接本机，也可通过命令行指定
            String host = args.length > 0 ? args[0] : "localhost";
            Registry registry = LocateRegistry.getRegistry(host, 1099);
            LibraryService service = (LibraryService) registry.lookup("LibraryService");

            Scanner sc = new Scanner(System.in);
            System.out.print("请输入用户名: ");
            String user = sc.nextLine().trim();

            while (true) {
                System.out.println("\n====== 图书馆菜单 ======");
                System.out.println("1. 查看图书列表");
                System.out.println("2. 借阅图书");
                System.out.println("3. 归还图书");
                System.out.println("0. 退出");
                System.out.print("请选择操作: ");
                String choice = sc.nextLine().trim();
                switch (choice) {
                    case "1" -> {
                        List<String> books = service.listBooks();
                        System.out.println("---- 图书列表 ----");
                        books.forEach(System.out::println);
                    }
                    case "2" -> {
                        System.out.print("输入要借阅的图书标题: ");
                        String titleBorrow = sc.nextLine().trim();
                        System.out.println(service.borrowBook(titleBorrow, user));
                    }
                    case "3" -> {
                        System.out.print("输入要归还的图书标题: ");
                        String titleReturn = sc.nextLine().trim();
                        System.out.println(service.returnBook(titleReturn, user));
                    }
                    case "0" -> {
                        System.out.println("Bye~");
                        System.exit(0);
                    }
                    default -> System.out.println("无效选择");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
