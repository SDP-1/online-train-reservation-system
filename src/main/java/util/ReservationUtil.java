package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Reservation;

public class ReservationUtil {

	private static Connection connection;
	private static Statement statement;
	
	 public static void addNewReservation(Reservation reservation) {
	        Connection connection = null;
	        PreparedStatement preparedStatement = null;

	        try {
	        	connection = DBConnectionUtil.getDBConnection();
	        	statement = connection.createStatement();

	            // Generate a new reservation number
	            int reservationNumber = getNewRecervationNumber();

	            // SQL INSERT statement
	            String sql = "INSERT INTO reservation (reservationId, userId, trainNumber, startPoint, endPoint, reservationDate, passengerCount, unitPrice, totalPrice, reservationPlaceDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";


	            // Create a prepared statement
	            preparedStatement = connection.prepareStatement(sql);

	            // Set the values for the placeholders in the SQL statement
	            preparedStatement.setInt(1, reservationNumber);
	            preparedStatement.setInt(2, reservation.getUserid());
		        preparedStatement.setInt(3, reservation.getTrain_number());
//		        preparedStatement.setString(3, reservation.getTrainName());
		        preparedStatement.setString(4, reservation.getStart_point());
		        preparedStatement.setString(5, reservation.getEnd_point());
		        preparedStatement.setString(6, reservation.getReservation_date());
		        preparedStatement.setInt(7, reservation.getPassenger_count());
		        preparedStatement.setDouble(8, reservation.getUnitPrice());
		        preparedStatement.setDouble(9, reservation.getTotalPrice());

	            // Execute the INSERT statement
	            int rowsInserted = preparedStatement.executeUpdate();
	            
	            TrainUtil.decreaseSheetCount(reservation.getTrain_number(),reservation.getPassenger_count());

	            if (rowsInserted > 0) {
	                // The reservation was successfully inserted
	                System.out.println("Reservation successfully placed.");
	            } else {
	                // An error occurred during the insertion
	                System.err.println("Failed to insert reservation.");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
	            // Close resources
	            try {
	                if (preparedStatement != null) {
	                    preparedStatement.close();
	                }
	                if (connection != null) {
	                    connection.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }

	public static ArrayList<Reservation> getReservationHistoryOfUser(int idOfUser) {

		ArrayList<Reservation> recervations = new ArrayList<>();
		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();

			String sql = "Select * from reservation where userId=" + idOfUser;

			ResultSet resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				int recervationId = resultSet.getInt("recervationId");
				int userId = resultSet.getInt("userId");
				int trainNumber = resultSet.getInt("trainNumber");
				String startPoint = resultSet.getString("startPoint");
				String endPoint = resultSet.getString("endPoint");
				String reservationDate = resultSet.getString("reservationDate");
				int pasengeCount = resultSet.getInt("pasengeCount");
				double unitPrice = resultSet.getDouble("unitPrice");
				double totalPrice = resultSet.getDouble("totalPrice");
				String reservationPlaceDate = resultSet.getString("reservationPlaceDate");

				Reservation reservation = new Reservation(trainNumber, startPoint, endPoint, reservationDate,
						pasengeCount, recervationId, userId, reservationPlaceDate, unitPrice, totalPrice);

				recervations.add(reservation);
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return recervations;
	}

	public static int getNewRecervationNumber() {

		int newId = 0;

		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();

			String sql = "Select reservationId from reservation order by reservationId DESC limit 1";

			ResultSet resultSet = statement.executeQuery(sql);

			if (resultSet.next()) {
				newId = resultSet.getInt("reservationId");
			}else {
				return 1000;
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return newId + 1;
	}

}
