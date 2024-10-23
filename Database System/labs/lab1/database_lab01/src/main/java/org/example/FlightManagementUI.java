package org.example;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class FlightManagementUI extends JFrame {

    private JTextField flightIDField, passengerIDField, seatNumberField, priceField;
    private JButton queryButton, insertButton, deleteButton, updateButton;

    public FlightManagementUI() {
        // 设置框架
        setTitle("航班管理系统");
        setSize(600, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // 创建组件
        flightIDField = new JTextField(10);
        passengerIDField = new JTextField(10);
        seatNumberField = new JTextField(10);
        priceField = new JTextField(10);

        queryButton = new JButton("查询");
        insertButton = new JButton("插入");
        deleteButton = new JButton("删除");
        updateButton = new JButton("更新");

        // 布局
        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(6, 2, 10, 10));

        panel.add(new JLabel("航班号:"));
        panel.add(flightIDField);
        panel.add(new JLabel("乘客ID:"));
        panel.add(passengerIDField);
        panel.add(new JLabel("座位号:"));
        panel.add(seatNumberField);
        panel.add(new JLabel("价格:"));
        panel.add(priceField);

        panel.add(queryButton);
        panel.add(insertButton);
        panel.add(deleteButton);
        panel.add(updateButton);

        add(panel);

        // 设置按钮操作
        queryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                queryFlight(flightIDField.getText());
            }
        });

        insertButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                insertFlight();
            }
        });

        deleteButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                deleteFlight(flightIDField.getText());
            }
        });

        updateButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                updateFlight();
            }
        });
    }

    // 查询航班
    private void queryFlight(String flightID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String query = "SELECT * FROM Flight WHERE FlightID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, flightID);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                JOptionPane.showMessageDialog(this, "航班号: " + resultSet.getString("FlightID") +
                        "\n起飞时间: " + resultSet.getString("DepartureTime") +
                        "\n到达时间: " + resultSet.getString("ArrivalTime"));
            } else {
                JOptionPane.showMessageDialog(this, "未找到航班 " + flightID);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "查询失败！");
        }
    }

    // 插入航班记录
    private void insertFlight() {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String insert = "INSERT INTO Ticket (FlightID, PassengerID, SeatNumber, Price) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1, flightIDField.getText());
            preparedStatement.setInt(2, Integer.parseInt(passengerIDField.getText()));
            preparedStatement.setString(3, seatNumberField.getText());
            preparedStatement.setBigDecimal(4, new java.math.BigDecimal(priceField.getText()));

            int rowsInserted = preparedStatement.executeUpdate();
            if (rowsInserted > 0) {
                JOptionPane.showMessageDialog(this, "成功插入记录！");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "插入失败！");
        }
    }

    // 删除航班记录
    private void deleteFlight(String flightID) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String delete = "DELETE FROM Flight WHERE FlightID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(delete);
            preparedStatement.setString(1, flightID);

            int rowsDeleted = preparedStatement.executeUpdate();
            if (rowsDeleted > 0) {
                JOptionPane.showMessageDialog(this, "成功删除航班 " + flightID);
            } else {
                JOptionPane.showMessageDialog(this, "航班 " + flightID + " 不存在");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "删除失败！");
        }
    }

    // 更新航班记录
    private void updateFlight() {
        try (Connection connection = DatabaseConnection.getConnection()) {
            String update = "UPDATE Ticket SET Price = ? WHERE FlightID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(update);
            preparedStatement.setBigDecimal(1, new java.math.BigDecimal(priceField.getText()));
            preparedStatement.setString(2, flightIDField.getText());

            int rowsUpdated = preparedStatement.executeUpdate();
            if (rowsUpdated > 0) {
                JOptionPane.showMessageDialog(this, "成功更新价格！");
            } else {
                JOptionPane.showMessageDialog(this, "未找到航班 " + flightIDField.getText());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "更新失败！");
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new FlightManagementUI().setVisible(true);
            }
        });
    }
}

