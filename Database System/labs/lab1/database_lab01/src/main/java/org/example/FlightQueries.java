package org.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FlightQueries {

    // 插入航班信息
    public static String insertFlight(String flightID, String departureTime, String arrivalTime,
                                      String airplaneID, String airlineID, String departureAirportID,
                                      String arrivalAirportID, String flightStatus, String flightType) {
        String query = "INSERT INTO Flight (FlightID, AirplaneID, AirlineID, DepartureAirportID, " +
                "ArrivalAirportID, DepartureTime, ArrivalTime, FlightStatus, FlightType) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, flightID);
            stmt.setInt(2, Integer.parseInt(airplaneID));
            stmt.setInt(3, Integer.parseInt(airlineID));
            stmt.setInt(4, Integer.parseInt(departureAirportID));
            stmt.setInt(5, Integer.parseInt(arrivalAirportID));
            stmt.setString(6, departureTime);
            stmt.setString(7, arrivalTime);
            stmt.setString(8, flightStatus);
            stmt.setString(9, flightType);

            int rows = stmt.executeUpdate();
            return rows > 0 ? "航班插入成功！" : "航班插入失败。";
        } catch (SQLException e) {
            e.printStackTrace();
            return "插入航班时发生错误：" + e.getMessage();
        }
    }

    // 查询航班信息
    public static String queryFlight(String flightID) {
        String query = "SELECT * FROM Flight WHERE FlightID = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, flightID);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return "航班ID: " + rs.getString("FlightID") + "\n" +
                        "起飞时间: " + rs.getString("DepartureTime") + "\n" +
                        "到达时间: " + rs.getString("ArrivalTime") + "\n" +
                        "飞机ID: " + rs.getInt("AirplaneID") + "\n" +
                        "航空公司ID: " + rs.getInt("AirlineID") + "\n" +
                        "起飞机场ID: " + rs.getInt("DepartureAirportID") + "\n" +
                        "到达机场ID: " + rs.getInt("ArrivalAirportID") + "\n" +
                        "航班状态: " + rs.getString("FlightStatus") + "\n" +
                        "航班类型: " + rs.getString("FlightType") + "\n";
            } else {
                return "未找到航班 " + flightID;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return "查询航班时发生错误：" + e.getMessage();
        }
    }

    // 更新航班信息
    public static String updateFlight(String flightID, String departureTime, String arrivalTime,
                                      String airplaneID, String airlineID, String departureAirportID,
                                      String arrivalAirportID, String flightStatus, String flightType) {
        String query = "UPDATE Flight SET AirplaneID = ?, AirlineID = ?, DepartureAirportID = ?, " +
                "ArrivalAirportID = ?, DepartureTime = ?, ArrivalTime = ?, FlightStatus = ?, FlightType = ? " +
                "WHERE FlightID = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, Integer.parseInt(airplaneID));
            stmt.setInt(2, Integer.parseInt(airlineID));
            stmt.setInt(3, Integer.parseInt(departureAirportID));
            stmt.setInt(4, Integer.parseInt(arrivalAirportID));
            stmt.setString(5, departureTime);
            stmt.setString(6, arrivalTime);
            stmt.setString(7, flightStatus);
            stmt.setString(8, flightType);
            stmt.setString(9, flightID);

            int rows = stmt.executeUpdate();
            return rows > 0 ? "航班更新成功！" : "航班更新失败。";
        } catch (SQLException e) {
            e.printStackTrace();
            return "更新航班时发生错误：" + e.getMessage();
        }
    }

    // 删除航班信息
    public static String deleteFlight(String flightID) {
        String query = "DELETE FROM Flight WHERE FlightID = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, flightID);

            int rows = stmt.executeUpdate();
            return rows > 0 ? "航班删除成功！" : "航班删除失败。";
        } catch (SQLException e) {
            e.printStackTrace();
            return "删除航班时发生错误：" + e.getMessage();
        }
    }
}
