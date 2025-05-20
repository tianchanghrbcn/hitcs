package common;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.List;

/**
 * RMI 远程接口：定义图书馆可调用的方法
 */
public interface LibraryService extends Remote {
    List<String> listBooks() throws RemoteException;
    String borrowBook(String title, String user) throws RemoteException;
    String returnBook(String title, String user) throws RemoteException;
}
