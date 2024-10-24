package org.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PassengerQueries {

    public static String insertPassenger(String passengerID, String name, String phone, String email) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "INSERT INTO Passenger (PassengerID, Name, Phone, Email) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, passengerID);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, phone);
            preparedStatement.setString(4, email);
            preparedStatement.executeUpdate();
            return "乘客插入成功！";
        } catch (SQLException e) {
            return "插入乘客时出错: " + e.getMessage();
        }
    }

    public static String updatePassenger(String passengerID, String name, String phone, String email) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "UPDATE Passenger SET Name = ?, Phone = ?, Email = ? WHERE PassengerID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, phone);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, passengerID);
            preparedStatement.executeUpdate();
            return "乘客更新成功！";
        } catch (SQLException e) {
            return "更新乘客时出错: " + e.getMessage();
        }
    }

    public static String deletePassenger(String passengerID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "DELETE FROM Passenger WHERE PassengerID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, passengerID);
            preparedStatement.executeUpdate();
            return "乘客删除成功！";
        } catch (SQLException e) {
            return "删除乘客时出错: " + e.getMessage();
        }
    }

    public static String queryPassenger(String passengerID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "SELECT * FROM Passenger WHERE PassengerID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, passengerID);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return "乘客ID: " + resultSet.getString("PassengerID") + "\n" +
                        "姓名: " + resultSet.getString("Name") + "\n" +
                        "电话: " + resultSet.getString("Phone") + "\n" +
                        "邮箱: " + resultSet.getString("Email");
            } else {
                return "未找到乘客 " + passengerID;
            }
        } catch (SQLException e) {
            return "查询乘客时出错: " + e.getMessage();
        }
    }
}
