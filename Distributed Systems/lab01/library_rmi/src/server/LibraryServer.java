package server;

        import common.LibraryService;

        import java.rmi.registry.LocateRegistry;
        import java.rmi.registry.Registry;

/**
 * 启动 RMI 图书馆服务器
 */
public class LibraryServer {

    public static void main(String[] args) {
        try {
            // 指定主机名，防止远程调用获取错误地址
            System.setProperty("java.rmi.server.hostname", "localhost");

            // 创建并导出远程对象
            LibraryService service = new LibraryServiceImpl();

            // 启动 RMI 注册表
            Registry registry = LocateRegistry.createRegistry(1099);

            // 将远程对象绑定到注册表
            registry.rebind("LibraryService", service);

            System.out.println("📚 Library RMI Server 已启动，监听端口 1099");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
