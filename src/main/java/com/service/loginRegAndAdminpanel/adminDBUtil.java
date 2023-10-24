package com.service.loginRegAndAdminpanel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.util.loginRegAndAdminpanel.DBConnect;

public class adminDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertmanager(String name,String email,String phone,String username,String password) {
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into manager values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
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
	
	
	
	public static boolean deletemanager(String id) {
	

		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			int mgrId = Integer.parseInt(id);
			String sql = "delete from manager where id='"+mgrId+"'";
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
	
	
	
	
	public static boolean deleteuser(String id) {
	

		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			int userId = Integer.parseInt(id);
			String sql = "delete from user where id='"+userId+"'";
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
	
	
	public static boolean addTrain(String tName,String tStart,String tEnd,int seatCount) {
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into train values (0,'"+tName+"','"+tStart+"','"+tEnd+"','"+seatCount+"','"+seatCount+"')";
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
	
	
	public static boolean deleteTrain(String id) {
	

		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			int userId = Integer.parseInt(id);
			String sql = "delete from train where id='"+userId+"'";
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
	
	public static boolean updateTrain(String id, int seatCount) {
	    boolean isSuccess = false;

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        int trainId = Integer.parseInt(id);
	        String sql = "UPDATE train SET availableSeatCount = ? WHERE id = ?";
	        PreparedStatement pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1, seatCount);
	        pstmt.setInt(2, trainId);

	        int rs = pstmt.executeUpdate();

	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}


}
