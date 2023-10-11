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
