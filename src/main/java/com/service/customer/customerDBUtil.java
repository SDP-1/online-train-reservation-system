package com.service.customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.customer.User;
import com.util.customer.DBConnect;

public class customerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs=null;
	
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
	public static List<User> getCustomer(String userName) {
	    List<User> customer = new ArrayList<>();

	    try (Connection con = DBConnect.getConnection();
	         PreparedStatement pstmt = con.prepareStatement("SELECT * FROM user WHERE username=?")) {

	        pstmt.setString(1, userName);
	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                int id = rs.getInt(1);
	                String name = rs.getString(2);
	                String email = rs.getString(3);
	                String phone = rs.getString(4);
	                String username = rs.getString(5);
	                String password = rs.getString(6);

	                User cus = new User(id, name, email, phone, username, password);
	                customer.add(cus);
	            }
	        }

	    } catch (Exception e) {
	        e.printStackTrace(); // or log the exception
	    }

	    return customer;
	}
	
	public static User getCustomer(int cid) {
	    User customer=null;

	    try (Connection con = DBConnect.getConnection();
	         PreparedStatement pstmt = con.prepareStatement("SELECT * FROM user WHERE id=?")) {

	        pstmt.setInt(1, cid);
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	                int id = rs.getInt(1);
	                String name = rs.getString(2);
	                String email = rs.getString(3);
	                String phone = rs.getString(4);
	                String username = rs.getString(5);
	                String password = rs.getString(6);

	                User cus = new User(id, name, email, phone, username, password);
	                customer = cus;
	            }
	        }

	    } catch (Exception e) {
	        e.printStackTrace(); // or log the exception
	    }

	    return customer;
	}


     public static boolean updatecustomer(String id,String name,String email,String phone,String username) {
    	 
    	 try {
    		 con=DBConnect.getConnection();
    		 stmt=con.createStatement();
    		 String sql="update user set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"'"
    				 +"where id='"+id+"'";
    		 
    		 int rs = stmt.executeUpdate(sql);
    		 
    		 if(rs>0) {
    			 isSuccess=true;
    		 }
    		 else {
    			 isSuccess=false;
    		 }
    	 }
    	 catch(Exception e){
    		 e.printStackTrace();
    	 }
    	 
    	 return isSuccess;
     }
     public static List<User> getCustomerDetails(String Id) {
     	
     	int convertedID = Integer.parseInt(Id);
     	
     	ArrayList<User> cus = new ArrayList<>();
     	
     	try {
     		
     		con = DBConnect.getConnection();
     		stmt = con.createStatement();
     		String sql = "select * from user where id='"+convertedID+"'";
     		rs = stmt.executeQuery(sql);
     		
     		while(rs.next()) {
     			int id = rs.getInt(1);
     			String name = rs.getString(2);
     			String email = rs.getString(3);
     			String phone = rs.getString(4);
     			String username = rs.getString(5);
     			String password=rs.getString(6);
     			
     			
     			User c = new User(id,name,email,phone,username,password);
     			cus.add(c);
     		}
     		
     	}
     	catch(Exception e) {
     		e.printStackTrace();
     	}	
     	return cus;	
     }
     public static List<User> getcustomerDetails(String Id){
    	 
    	 int convertedID=Integer.parseInt(Id);
    	 
    	 ArrayList<User> cus=new ArrayList<>();
    	 
    	 try {
    		 con=DBConnect.getConnection();
    		 stmt=con.createStatement();
    		 String sql="Select * from user where id='"+convertedID+"'";
    		 rs=stmt.executeQuery(sql);
    		 
    		 while(rs.next()) {
    			 int id=rs.getInt(1);
    			 String name=rs.getString(2);
    			 String email = rs.getString(3);
      			 String phone = rs.getString(4);
      			 String username = rs.getString(5);
      			String password=rs.getString(6);
      			 
      			 User c=new User(id,name,email,phone,username,password);
      			 cus.add(c);
    		 }
    	 }
    	 catch(Exception e){
    		 e.printStackTrace();
    	 }
    	 return cus;
     }
     public static boolean deleteCustomer(String id) {
    	    int convId = Integer.parseInt(id);

    	    try {
    	        con = DBConnect.getConnection();
    	        stmt = con.createStatement();

    	        // Use executeUpdate for data manipulation queries (insert, update, delete)
    	        String sql = "DELETE FROM user WHERE id=" + convId;
    	        int rowsAffected = stmt.executeUpdate(sql);

    	        // Check if any rows were affected
    	        if (rowsAffected > 0) {
    	            isSuccess = true;
    	        } else {
    	            isSuccess = false;
    	        }
    	    } catch (Exception e) {
    	        e.printStackTrace();
    	    } finally {
    	        // Close resources in the reverse order of their creation to avoid resource leaks
    	        try {
    	            if (stmt != null) {
    	                stmt.close();
    	            }
    	            if (con != null) {
    	                con.close();
    	            }
    	        } catch (Exception e) {
    	            e.printStackTrace();
    	        }
    	    }
    	    return isSuccess;
    	}

     public static boolean updatePassword(String id, String newPassword) {
         try (Connection connection = DBConnect.getConnection();
              PreparedStatement preparedStatement = connection.prepareStatement("UPDATE user SET password = ? WHERE id = ?")) {

             preparedStatement.setString(1, newPassword);
             preparedStatement.setString(2, id);

             int rowsAffected = preparedStatement.executeUpdate();

             return rowsAffected > 0;
         } catch (Exception e) {
             e.printStackTrace();
         }

         return true;
     }
}
