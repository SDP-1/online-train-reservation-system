package com.servlet.loginRegAndAdminpanel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.loginRegAndAdminpanel.Admin;
import com.service.loginRegAndAdminpanel.customerDBUtil;


@WebServlet("/managerLoginServlet")
public class managerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("manageruid");      //catch from form
		String password = request.getParameter("managerpass");
		
try {
			
			boolean status  = customerDBUtil.validateManager(username, password);
			if(status == true) {
				
				
				List<Admin> adminDetails = customerDBUtil.getAdmin(username);  //
				request.setAttribute("adminDetails", adminDetails);  //
				
				
				RequestDispatcher dis = request.getRequestDispatcher("managerhome.jsp");   /// after successful login, redirect to home page
				dis.forward(request, response);
			}else {
				
		
				
				RequestDispatcher dis = request.getRequestDispatcher("managerLogin.jsp"); /// is unsuccessful , redirect to login again
				dis.forward(request, response);
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
			
	

	}

}
