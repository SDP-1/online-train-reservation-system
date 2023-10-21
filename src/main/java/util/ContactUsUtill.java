package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import model.ContactUs;
import model.Reservation;

public class ContactUsUtill {
	
	private static Connection connection;
	private static Statement statement;
	
	public static void addNewComplane(ContactUs contactUs) {

		try {
        	connection = DBConnectionUtil.getDBConnection();
        	statement = connection.createStatement();

            

            // SQL INSERT statement
            String sql = "INSERT INTO contactus (name,email,mobile,subject,message) VALUES (?, ?, ?, ?, ?)";


            // Create a prepared statement
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            // Set the values for the placeholders in the SQL statement
            preparedStatement.setString(1, contactUs.get_sender_name());
            preparedStatement.setString(2, contactUs.get_sender_email());
	        preparedStatement.setString(3, contactUs.get_sender_mobile());
	        preparedStatement.setString(4, contactUs.get_subject());
	        preparedStatement.setString(5,contactUs.get_message());

            // Execute the INSERT statement
            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
                // The complane was successfully inserted
                System.out.println("complane successfully placed.");
            } else {
                // An error occurred during the insertion
                System.err.println("Failed to send complane.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
            // Close resources
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
