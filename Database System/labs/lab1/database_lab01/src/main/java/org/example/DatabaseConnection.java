package org.example;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DatabaseConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/flights";
    private static final String USER = "root"; // 你的 MySQL 用户名
    private static final String PASSWORD = "123456"; // 你的 MySQL 密码

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

