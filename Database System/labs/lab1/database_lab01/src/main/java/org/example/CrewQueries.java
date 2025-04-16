package org.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CrewQueries {

    public static String insertCrew(String crewID, String name, String role, String phone) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "INSERT INTO Crew (CrewID, Name, Role, Phone) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, crewID);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, role);
            preparedStatement.setString(4, phone);
            preparedStatement.executeUpdate();
            return "机组成员插入成功！";
        } catch (SQLException e) {
            return "插入机组成员时出错: " + e.getMessage();
        }
    }

    public static String updateCrew(String crewID, String name, String role, String phone) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "UPDATE Crew SET Name = ?, Role = ?, Phone = ? WHERE CrewID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, role);
            preparedStatement.setString(3, phone);
            preparedStatement.setString(4, crewID);
            preparedStatement.executeUpdate();
            return "机组成员更新成功！";
        } catch (SQLException e) {
            return "更新机组成员时出错: " + e.getMessage();
        }
    }

    public static String deleteCrew(String crewID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "DELETE FROM Crew WHERE CrewID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, crewID);
            preparedStatement.executeUpdate();
            return "机组成员删除成功！";
        } catch (SQLException e) {
            return "删除机组成员时出错: " + e.getMessage();
        }
    }

    public static String queryCrew(String crewID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "SELECT * FROM Crew WHERE CrewID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, crewID);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return "机组成员ID: " + resultSet.getString("CrewID") + "\n" +
                        "姓名: " + resultSet.getString("Name") + "\n" +
                        "角色: " + resultSet.getString("Role") + "\n" +
                        "电话: " + resultSet.getString("Phone");
            } else {
                return "未找到机组成员 " + crewID;
            }
        } catch (SQLException e) {
            return "查询机组成员时出错: " + e.getMessage();
        }
    }
}
