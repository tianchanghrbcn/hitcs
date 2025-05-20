package common;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.List;

/**
 * LibraryService —— 图书馆远程服务接口
 *
 * <p>所有方法都声明抛出 {@link RemoteException}，以满足 RMI 对远程调用
 * 的异常要求。客户端通过 RMI 代理对象调用这些方法时，
 * 网络层产生的故障（如连接超时、服务器不可达）会被包装成
 * RemoteException 向上传递。</p>
 */
public interface LibraryService extends Remote {

    /**
     * 列出所有图书的当前状态。
     *
     * @return 字符串列表；每条形如
     *         {@code "Java 编程思想 (可借)"} 或
     *         {@code "Java 编程思想 (已借出给 Alice)"}。
     * @throws RemoteException 远程调用失败时抛出
     */
    List<String> listBooks() throws RemoteException;

    /**
     * 借阅指定图书。
     *
     * @param title 要借阅的图书标题（必须与服务器端存储的标题完全一致）
     * @param user  借阅人用户名
     * @return 服务器返回的结果说明：
     *         <ul>
     *           <li>✅ 借阅成功 – 借阅操作已生效</li>
     *           <li>❌ 图书已被借出，当前借阅人：Xxx</li>
     *           <li>❌ 未找到图书：title</li>
     *         </ul>
     * @throws RemoteException 远程调用失败时抛出
     */
    String borrowBook(String title, String user) throws RemoteException;

    /**
     * 归还指定图书。
     *
     * @param title 要归还的图书标题
     * @param user  发起归还请求的用户名
     * @return 服务器返回的结果说明：
     *         <ul>
     *           <li>✅ 归还成功</li>
     *           <li>❌ 归还失败：请确认您是借阅人</li>
     *           <li>❌ 未找到图书：title</li>
     *         </ul>
     * @throws RemoteException 远程调用失败时抛出
     */
    String returnBook(String title, String user) throws RemoteException;
}
