package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;

import model.Train;

public class TrainUtil {

	private static Connection connection;
	private static Statement statement;

	public static ArrayList<Train> getTrains() {
			
		ArrayList<Train> trains = new ArrayList<>();
		try {
			connection = DBConnectionUtil.getDBConnection();

			statement = connection.createStatement();

			String sql = "Select * from train";

			ResultSet resultSet = statement.executeQuery(sql);
			
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String start = resultSet.getString("start");
				String end = resultSet.getString("end");
				int seatCount = resultSet.getInt("seatCount");
				int availableSeatCount = resultSet.getInt("availableSeatCount");

				Train train = new Train(id, name, start, end, seatCount, availableSeatCount);
				trains.add(train);
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return trains;
	}

}
