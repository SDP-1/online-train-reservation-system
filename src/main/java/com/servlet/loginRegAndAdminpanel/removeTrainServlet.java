package com.servlet.loginRegAndAdminpanel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.loginRegAndAdminpanel.adminDBUtil;
import com.service.loginRegAndAdminpanel.customerDBUtil;


@WebServlet("/removeTrainServlet")
public class removeTrainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tid = request.getParameter("tid");
		String tname = request.getParameter("tname");
		
		boolean isTrue;
		
    	isTrue = adminDBUtil.deleteTrain(tid);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminSuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("adminError.jsp"); //if create acc unsuccessful , redirect to this
			dis2.forward(request, response); 
		}
		

		
	}
	

}
