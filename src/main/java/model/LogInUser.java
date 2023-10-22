package model;

public class LogInUser {
	
	private static int userID;

	
	public static void setUserId(int sid) {
		userID = sid;
	}
	
	public static int getUserId() {
		return userID;
	}
	
	public static void logOutUser() {
		userID = 0;
	}
	
	static{
		userID=0;
	}
}
