package com.service.loginRegAndAdminpanel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.loginRegAndAdminpanel.Admin;
import com.util.loginRegAndAdminpanel.DBConnect;

public class customerDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String userName, String password){
		boolean loginStatus;
		loginStatus = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();			
			String sql = "select * from user where username = '" + userName + "' and password = '" + password + "'";
			rs = stmt.executeQuery(sql);			
			if(rs.next()) {
				loginStatus = true;
			}			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return loginStatus;
	}
	
	
	
	
	
	
	
	////////
	
	
	
	public static boolean validateAdmin(String userName, String password){
		boolean adminLoginStatus;
		adminLoginStatus = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();			
			String sql = "select * from admin where username = '" + userName + "' and password = '" + password + "'";
			rs = stmt.executeQuery(sql);			
			if(rs.next()) {
				adminLoginStatus = true;
			}			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return adminLoginStatus;
	}
	
	
	public static List<Admin> getAdmin(String userName){
		ArrayList<Admin> admin = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Admin adm = new Admin(id,name,email,phone,username, password);
				admin.add(adm);
			}
			
		}catch(Exception e) {
			
		}
		
		return admin;
	}
	
	
	
	
	/////////
	
	public static boolean insertcustomer(String name,String email,String phone,String username,String password) {
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
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
	
	public static boolean validateManager(String userName, String password){
		boolean adminLoginStatus;
		adminLoginStatus = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();			
			String sql = "select * from manager where username = '" + userName + "' and password = '" + password + "'";
			rs = stmt.executeQuery(sql);			
			if(rs.next()) {
				adminLoginStatus = true;
			}			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return adminLoginStatus;
	}
	

}
