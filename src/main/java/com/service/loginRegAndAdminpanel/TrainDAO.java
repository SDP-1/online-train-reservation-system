package com.service.loginRegAndAdminpanel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.loginRegAndAdminpanel.Train;

public class TrainDAO {
    // Define your database connection details here
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/otrs";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "1234";
    
    
    public List<Train> getAllTrains() {
        List<Train> trains = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            // Create a database connection
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Define your SQL query to retrieve train data
            String sql = "SELECT id, name, start, end, seatCount, availableSeatCount FROM train";
            statement = connection.prepareStatement(sql);

            // Execute the query and obtain the result set
            resultSet = statement.executeQuery();

            // Process the result set and populate the 'trains' list
            while (resultSet.next()) {
                Train train = new Train();
                train.setId(resultSet.getInt("id"));
                train.setName(resultSet.getString("name"));
                train.setStart(resultSet.getString("start"));
                train.setEnd(resultSet.getString("end"));
                train.setSeatCount(resultSet.getInt("seatCount"));
                train.setAvailableSeatCount(resultSet.getInt("availableSeatCount"));
                trains.add(train);
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

        return trains;
    }
}
