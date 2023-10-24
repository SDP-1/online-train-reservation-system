package util;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Train;
import model.TrainShedule;

public class TrainSheduleUtil {

	private static Connection connection;
	private static Statement statement;

	public static double getTicketPrice(String startPoint , String endPoint) {

		double Km = 0;

		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();
			
			String sql = "SELECT Km FROM train_schedule WHERE (station1 = ? AND station2 = ?) OR (station1 = ? AND station2 = ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, startPoint);
			preparedStatement.setString(2, endPoint);
			preparedStatement.setString(3, endPoint);
			preparedStatement.setString(4, startPoint);
			ResultSet resultSet = preparedStatement.executeQuery();
			
			if (resultSet.next()) {
				Km = resultSet.getDouble("Km");
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return Km * 2;
	}

}
