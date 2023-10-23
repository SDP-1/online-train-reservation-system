package com.servlet.customer;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.customer.User;
import com.service.customer.customerDBUtil;

@WebServlet("/editProServlet")
public class editProServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String username=request.getParameter("username");
		
		boolean isTrue;
		
		isTrue=customerDBUtil.updatecustomer(id, name, email, phone, username);
		
		if(isTrue==true) {
			
			List<User> cusDetails=com.service.customer.customerDBUtil.getcustomerDetails(id);
			request.setAttribute("CusDetails",cusDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("userProfile.jsp");
			dis.forward(request, response);
		}
		else {
			List<User> cusDetails=customerDBUtil.getcustomerDetails(id);
			request.setAttribute("CusDetails",cusDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("userProfille.jsp");
			dis.forward(request, response);
		}
		
	}

}
