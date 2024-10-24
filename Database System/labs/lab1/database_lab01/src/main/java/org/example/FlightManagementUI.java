package org.example;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class FlightManagementUI extends JFrame {

    private final JTextField flightIDField, departureTimeField, arrivalTimeField, airplaneIDField, airlineIDField;
    private final JTextField departureAirportIDField, arrivalAirportIDField, flightStatusField, flightTypeField;
    private final JTextArea resultArea;

    public FlightManagementUI() {
        // 设置框架
        setTitle("航班管理系统");
        setSize(900, 600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // 创建组件
        flightIDField = new JTextField(10);
        departureTimeField = new JTextField(20);
        arrivalTimeField = new JTextField(20);
        airplaneIDField = new JTextField(10);
        airlineIDField = new JTextField(10);

        departureAirportIDField = new JTextField(10);
        arrivalAirportIDField = new JTextField(10);
        flightStatusField = new JTextField(10);
        flightTypeField = new JTextField(10);

        JButton queryFlightButton = new JButton("查询航班");
        JButton insertFlightButton = new JButton("插入航班");
        JButton deleteFlightButton = new JButton("删除航班");
        JButton updateFlightButton = new JButton("更新航班");

        resultArea = new JTextArea(10, 50);
        resultArea.setLineWrap(true);
        resultArea.setWrapStyleWord(true);
        resultArea.setEditable(false);

        JPanel inputPanel = new JPanel(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.insets = new Insets(5, 5, 5, 5);

        // 航班输入区域
        gbc.gridx = 0;
        gbc.gridy = 0;
        inputPanel.add(new JLabel("航班号:"), gbc);
        gbc.gridx = 1;
        inputPanel.add(flightIDField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 1;
        inputPanel.add(new JLabel("起飞时间(YYYY-MM-DD HH:MM:SS):"), gbc);
        gbc.gridx = 1;
        inputPanel.add(departureTimeField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 2;
        inputPanel.add(new JLabel("到达时间(YYYY-MM-DD HH:MM:SS):"), gbc);
        gbc.gridx = 1;
        inputPanel.add(arrivalTimeField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 3;
        inputPanel.add(new JLabel("飞机ID:"), gbc);
        gbc.gridx = 1;
        inputPanel.add(airplaneIDField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 4;
        inputPanel.add(new JLabel("航空公司ID:"), gbc);
        gbc.gridx = 1;
        inputPanel.add(airlineIDField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 5;
        inputPanel.add(new JLabel("起飞机场ID:"), gbc);
        gbc.gridx = 1;
        inputPanel.add(departureAirportIDField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 6;
        inputPanel.add(new JLabel("到达机场ID:"), gbc);
        gbc.gridx = 1;
        inputPanel.add(arrivalAirportIDField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 7;
        inputPanel.add(new JLabel("航班状态:"), gbc);
        gbc.gridx = 1;
        inputPanel.add(flightStatusField, gbc);

        gbc.gridx = 0;
        gbc.gridy = 8;
        inputPanel.add(new JLabel("航班类型:"), gbc);
        gbc.gridx = 1;
        inputPanel.add(flightTypeField, gbc);

        gbc.gridx = 2;
        gbc.gridy = 0;
        inputPanel.add(insertFlightButton, gbc);
        gbc.gridy = 1;
        inputPanel.add(updateFlightButton, gbc);
        gbc.gridy = 2;
        inputPanel.add(deleteFlightButton, gbc);
        gbc.gridy = 3;
        inputPanel.add(queryFlightButton, gbc);

        // 布局
        setLayout(new BorderLayout());
        add(inputPanel, BorderLayout.NORTH);
        add(new JScrollPane(resultArea), BorderLayout.CENTER);

        // 插入航班按钮事件
        insertFlightButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    String flightID = flightIDField.getText();
                    String departureTime = departureTimeField.getText();
                    String arrivalTime = arrivalTimeField.getText();
                    String airplaneID = airplaneIDField.getText();
                    String airlineID = airlineIDField.getText();
                    String departureAirportID = departureAirportIDField.getText();
                    String arrivalAirportID = arrivalAirportIDField.getText();
                    String flightStatus = flightStatusField.getText();
                    String flightType = flightTypeField.getText();

                    // 插入航班逻辑
                    String result = FlightQueries.insertFlight(flightID, departureTime, arrivalTime, airplaneID, airlineID,
                            departureAirportID, arrivalAirportID, flightStatus, flightType);
                    resultArea.setText(result);
                } catch (Exception ex) {
                    resultArea.setText("输入有误，请检查字段内容。");
                }
            }
        });

        // 查询航班按钮事件
        queryFlightButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String flightID = flightIDField.getText();
                String result = FlightQueries.queryFlight(flightID);
                resultArea.setText(result);
            }
        });

        // 更新航班按钮事件
        updateFlightButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    String flightID = flightIDField.getText();
                    String departureTime = departureTimeField.getText();
                    String arrivalTime = arrivalTimeField.getText();
                    String airplaneID = airplaneIDField.getText();
                    String airlineID = airlineIDField.getText();
                    String departureAirportID = departureAirportIDField.getText();
                    String arrivalAirportID = arrivalAirportIDField.getText();
                    String flightStatus = flightStatusField.getText();
                    String flightType = flightTypeField.getText();

                    // 更新航班逻辑
                    String result = FlightQueries.updateFlight(flightID, departureTime, arrivalTime, airplaneID, airlineID,
                            departureAirportID, arrivalAirportID, flightStatus, flightType);
                    resultArea.setText(result);
                } catch (Exception ex) {
                    resultArea.setText("输入有误，请检查字段内容。");
                }
            }
        });

        // 删除航班按钮事件
        deleteFlightButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String flightID = flightIDField.getText();
                String result = FlightQueries.deleteFlight(flightID);
                resultArea.setText(result);
            }
        });
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
