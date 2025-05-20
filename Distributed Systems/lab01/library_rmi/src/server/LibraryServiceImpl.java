package server;

import common.Book;
import common.LibraryService;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.*;

/**
 * LibraryService 的远程实现类
 * <p>
 * 说明：
 * 1. 继承 UnicastRemoteObject，让对象具备被 RMI runtime 导出、生成 Stub 的能力；
 * 2. 实现 LibraryService 接口，对外提供远程可调用的方法；
 * 3. 使用 synchronized 保证并发环境下的线程安全。
 */
public class LibraryServiceImpl extends UnicastRemoteObject implements LibraryService {

    /** 以“书名 → Book 实例”方式存放所有图书 */
    private final Map<String, Book> books;

    /**
     * 构造方法：初始化示例图书
     *
     * @throws RemoteException 构造远程对象时可能抛出的异常
     */
    public LibraryServiceImpl() throws RemoteException {
        super();                // 必须调用父类构造函数，完成远程对象导出
        books = new HashMap<>();// 创建图书集合

        // ---- 初始化 3 本示例图书 ----
        books.put("Java 编程思想",      new Book("Java 编程思想"));
        books.put("深入理解Java虚拟机", new Book("深入理解Java虚拟机"));
        books.put("Effective Java",    new Book("Effective Java"));
    }

    /**
     * 列出所有图书（含借阅状态）
     *
     * @return 逐行描述的字符串列表
     */
    @Override
    public synchronized List<String> listBooks() throws RemoteException {
        List<String> list = new ArrayList<>();
        for (Book b : books.values()) {
            list.add(b.toString()); // Book.toString() 会根据状态拼好字符串
        }
        return list;
    }

    /**
     * 借阅指定图书
     *
     * @param title 书名
     * @param user  借阅人
     * @return 操作结果描述
     */
    @Override
    public synchronized String borrowBook(String title, String user) throws RemoteException {
        Book b = books.get(title);
        if (b == null) {
            return "❌ 未找到图书：" + title;
        }
        if (b.borrow(user)) {                 // 调用 Book.borrow() 尝试借阅
            return "✅ 借阅成功";
        }
        return "❌ 图书已被借出，当前借阅人：" + b.getBorrower();
    }

    /**
     * 归还指定图书
     *
     * @param title 书名
     * @param user  归还人（需与借阅人一致）
     * @return 操作结果描述
     */
    @Override
    public synchronized String returnBook(String title, String user) throws RemoteException {
        Book b = books.get(title);
        if (b == null) {
            return "❌ 未找到图书：" + title;
        }
        if (b.giveBack(user)) {               // 调用 Book.giveBack() 尝试归还
            return "✅ 归还成功";
        }
        return "❌ 归还失败：请确认您是借阅人";
    }
}
