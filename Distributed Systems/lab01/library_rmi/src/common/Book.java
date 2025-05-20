package common;

import java.io.Serializable;

/**
 * 图书实体类，包含标题和借阅人信息。
 * <p>
 * 说明：
 * 1. 该类实现 Serializable，便于通过 Java RMI 进行对象序列化与网络传输。
 * 2. 所有读写“借阅人”状态的方法均使用 synchronized，保证多线程环境下的可见性与互斥。
 */
public class Book implements Serializable {
    private static final long serialVersionUID = 1L;   // 序列化版本号

    /* -------------------- 成员变量 -------------------- */

    private final String title;    // 书名（只读）
    private String borrower;       // 当前借阅人；为 null 表示“可借”

    /* -------------------- 构造方法 -------------------- */

    /**
     * 创建一本新的图书，初始状态为“可借”。
     *
     * @param title 书名
     */
    public Book(String title) {
        this.title = title;
        this.borrower = null;
    }

    /* -------------------- 基本信息查询 -------------------- */

    /** 获取书名 */
    public synchronized String getTitle() {
        return title;
    }

    /** 判断是否可借 */
    public synchronized boolean isAvailable() {
        return borrower == null;
    }

    /** 获取当前借阅人（可能为 null） */
    public synchronized String getBorrower() {
        return borrower;
    }

    /* -------------------- 借阅 / 归还 -------------------- */

    /**
     * 尝试借阅
     *
     * @param user 借阅人
     * @return true = 借阅成功；false = 已被他人借出
     */
    public synchronized boolean borrow(String user) {
        if (isAvailable()) {
            borrower = user;
            return true;
        }
        return false;
    }

    /**
     * 尝试归还
     *
     * @param user 归还人（必须与 borrower 一致）
     * @return true = 归还成功；false = 归还失败
     */
    public synchronized boolean giveBack(String user) {
        if (!isAvailable() && borrower.equals(user)) {
            borrower = null;
            return true;
        }
        return false;
    }

    /* -------------------- toString -------------------- */

    @Override
    public synchronized String toString() {
        // 输出友好的状态描述
        if (isAvailable()) {
            return title + " (可借)";
        }
        return title + " (已借出给 " + borrower + ")";
    }
}
