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


@WebServlet("/deleteCustomer")
public class deleteCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("pid");
		boolean isTrue;
		
		isTrue=customerDBUtil.deleteCustomer(id);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher=request.getRequestDispatcher("#");
			dispatcher.forward(request, response);;		
		}
		else {
			List<User> cusdetails=com.service.customer.customerDBUtil.getcustomerDetails(id);
			request.setAttribute("Cusdetails",cusdetails);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("userProfile.jsp");
			dispatcher.forward(request,response);
		}
	}

}
