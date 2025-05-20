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
            // 1️⃣ 指定服务器向外暴露的主机名
            //    如果部署在多网卡 / 云主机上，可改成实际 IP，避免客户端收到 127.0.0.1
            System.setProperty("java.rmi.server.hostname", "localhost");

            // 2️⃣ 创建远程对象实例（图书馆服务的具体实现）
            LibraryService service = new LibraryServiceImpl();

            // 3️⃣ 启动嵌入式 RMI 注册表，相当于手动命令行 rmiregistry 1099
            Registry registry = LocateRegistry.createRegistry(1099);

            // 4️⃣ 将远程对象绑定到注册表
            //    客户端通过 “LibraryService” 这个名字 lookup() 即可获得代理
            registry.rebind("LibraryService", service);

            System.out.println("📚 Library RMI Server 已启动，监听端口 1099");
        } catch (Exception e) {
            // 5️⃣ 启动或绑定过程中若出现异常，打印堆栈便于排查
            e.printStackTrace();
        }
    }
}
