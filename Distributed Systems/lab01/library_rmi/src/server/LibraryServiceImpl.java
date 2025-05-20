package server;

import common.Book;
import common.LibraryService;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.*;

/**
 * LibraryService 的远程实现
 */
public class LibraryServiceImpl extends UnicastRemoteObject implements LibraryService {

    private final Map<String, Book> books;

    public LibraryServiceImpl() throws RemoteException {
        super();
        books = new HashMap<>();

        // 初始化一些示例图书
        books.put("Java 编程思想", new Book("Java 编程思想"));
        books.put("深入理解Java虚拟机", new Book("深入理解Java虚拟机"));
        books.put("Effective Java", new Book("Effective Java"));
    }

    @Override
    public synchronized List<String> listBooks() throws RemoteException {
        List<String> list = new ArrayList<>();
        for (Book b : books.values()) {
            list.add(b.toString());
        }
        return list;
    }

    @Override
    public synchronized String borrowBook(String title, String user) throws RemoteException {
        Book b = books.get(title);
        if (b == null) {
            return "❌ 未找到图书：" + title;
        }
        if (b.borrow(user)) {
            return "✅ 借阅成功";
        }
        return "❌ 图书已被借出，当前借阅人：" + b.getBorrower();
    }

    @Override
    public synchronized String returnBook(String title, String user) throws RemoteException {
        Book b = books.get(title);
        if (b == null) {
            return "❌ 未找到图书：" + title;
        }
        if (b.giveBack(user)) {
            return "✅ 归还成功";
        }
        return "❌ 归还失败：请确认您是借阅人";
    }
}
