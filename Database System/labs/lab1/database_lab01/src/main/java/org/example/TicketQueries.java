package org.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TicketQueries {

    public static String insertTicket(String ticketID, String seatNumber, String price) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "INSERT INTO Ticket (TicketID, SeatNumber, Price) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, ticketID);
            preparedStatement.setString(2, seatNumber);
            preparedStatement.setString(3, price);
            preparedStatement.executeUpdate();
            return "票务插入成功！";
        } catch (SQLException e) {
            return "插入票务时出错: " + e.getMessage();
        }
    }

    public static String updateTicket(String ticketID, String seatNumber, String price) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "UPDATE Ticket SET SeatNumber = ?, Price = ? WHERE TicketID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, seatNumber);
            preparedStatement.setString(2, price);
            preparedStatement.setString(3, ticketID);
            preparedStatement.executeUpdate();
            return "票务更新成功！";
        } catch (SQLException e) {
            return "更新票务时出错: " + e.getMessage();
        }
    }

    public static String deleteTicket(String ticketID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "DELETE FROM Ticket WHERE TicketID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, ticketID);
            preparedStatement.executeUpdate();
            return "票务删除成功！";
        } catch (SQLException e) {
            return "删除票务时出错: " + e.getMessage();
        }
    }

    public static String queryTicket(String ticketID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "SELECT * FROM Ticket WHERE TicketID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, ticketID);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return "票务ID: " + resultSet.getString("TicketID") + "\n" +
                        "座位号: " + resultSet.getString("SeatNumber") + "\n" +
                        "票价: " + resultSet.getString("Price");
            } else {
                return "未找到票务 " + ticketID;
            }
        } catch (SQLException e) {
            return "查询票务时出错: " + e.getMessage();
        }
    }
}
