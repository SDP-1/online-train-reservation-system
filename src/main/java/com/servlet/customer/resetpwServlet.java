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


@WebServlet("/resetpwServlet")
public class resetpwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
        String cPassword = request.getParameter("cPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // You may want to perform additional validation here

        // Check if new password and confirm password match
        if (!newPassword.equals(confirmPassword)) {
            // Handle password mismatch (you can redirect or show an error message)
            response.sendRedirect("edituserprofile.jsp?error=passwordMismatch");
            return;
        }
        boolean passwordUpdated = customerDBUtil.updatePassword(id,newPassword);

        if (passwordUpdated) {
            // Password updated successfully
          //  response.sendRedirect("edituserprofile.jsp?success=passwordUpdated");

    		User user = customerDBUtil.getCustomer(Integer.valueOf(id));
    		
    		request.setAttribute("user", user);

    		// Forward the request to the JSP page
    		RequestDispatcher dispatcher = request.getRequestDispatcher("edituserprofile.jsp");
    		dispatcher.forward(request, response);
    		
        } else {
            // Handle the case where the password update fails
        	response.sendRedirect("edituserprofile.jsp?id=" + id);;
        }
      
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    // Return HTTP 405 Method Not Allowed for GET requests
	    response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
	    response.getWriter().write("GET method is not supported for this URL");
	}
 

}
