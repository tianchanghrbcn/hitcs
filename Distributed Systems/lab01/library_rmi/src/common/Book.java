package common;

import java.io.Serializable;

/**
 * 图书实体类，包含标题和借阅人信息。
 */
public class Book implements Serializable {
    private static final long serialVersionUID = 1L;

    private final String title;
    private String borrower; // null 表示可借

    public Book(String title) {
        this.title = title;
        this.borrower = null;
    }

    public synchronized String getTitle() {
        return title;
    }

    public synchronized boolean isAvailable() {
        return borrower == null;
    }

    public synchronized String getBorrower() {
        return borrower;
    }

    public synchronized boolean borrow(String user) {
        if (isAvailable()) {
            borrower = user;
            return true;
        }
        return false;
    }

    public synchronized boolean giveBack(String user) {
        if (!isAvailable() && borrower.equals(user)) {
            borrower = null;
            return true;
        }
        return false;
    }

    @Override
    public synchronized String toString() {
        if (isAvailable()) {
            return title + " (可借)";
        }
        return title + " (已借出给 " + borrower + ")";
    }
}
