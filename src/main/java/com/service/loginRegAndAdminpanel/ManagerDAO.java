package com.service.loginRegAndAdminpanel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.model.loginRegAndAdminpanel.Manager;


public class ManagerDAO {
    // Define your database connection details here
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/otrs";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "1234";
    
    
    public static List<Manager> getAllManagers() {
        List<Manager> managers = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            // Create a database connection
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Define your SQL query to retrieve manager data
            String sql = "SELECT id, name, email, phone, username, password FROM manager";
            statement = connection.prepareStatement(sql);

            // Execute the query and obtain the result set
            resultSet = statement.executeQuery();

            // Process the result set and populate the 'managers' list

            while (resultSet.next()) {
                Manager manager = new Manager();
                manager.setId(resultSet.getInt("id"));
                manager.setName(resultSet.getString("name"));
                manager.setEmail(resultSet.getString("email"));
                manager.setPhone(resultSet.getString("phone"));
                manager.setUserName(resultSet.getString("username"));
                manager.setPassword(resultSet.getString("password"));
                managers.add(manager);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close database resources in the reverse order of their creation
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return managers;
    }
}
