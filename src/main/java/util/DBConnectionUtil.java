package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionUtil {
	private static Connection connection;

	private DBConnectionUtil() {
	}

	private static String url = "jdbc:mysql://localhost:3306/otrs";
	private static String DBuser = "root";
	private static String DBpassword = "1234";

	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {

		try {

			if (connection == null || connection.isClosed()) {

				Class.forName("com.mysql.jdbc.Driver");

				connection = DriverManager.getConnection(url, DBuser, DBpassword);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;
	}
}