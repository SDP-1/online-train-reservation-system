package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import model.LogInUser;

public class customerDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static int validate(String userName, String password){
		int id = 0;
		try {
			con = DBConnectionUtil.getDBConnection();
			stmt = con.createStatement();			
			String sql = "select * from user where username = '" + userName + "' and password = '" + password + "'";
			rs = stmt.executeQuery(sql);			
			if(rs.next()) {
				id = rs.getInt(1);
				//LogInUser.setUserId(rs.getInt(1));
			}			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return id;
	}
	
	public static boolean insertcustomer(String name,String email,String phone,String username,String password) {
		boolean isSuccess = false;
		try {
			con = DBConnectionUtil.getDBConnection();
			stmt = con.createStatement();
			String sql = "insert into user(name,email,phone,userName,password) values ('"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}	
		}catch(Exception e) {
			e.printStackTrace();		
			}
		
		
		return isSuccess;
		
	}

}
