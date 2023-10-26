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

import model.LogInUser;

@WebServlet("/deleteCustomer")
public class deleteCustomer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("pid");

        
        if (id != null && !id.isEmpty()) {
            boolean isTrue;

            isTrue = customerDBUtil.deleteCustomer(id);

            if (isTrue) {
                // Redirect to a success page or do what is needed for a successful delete
            	LogInUser.logOutUser();
                response.sendRedirect("index.jsp");
            } else {
                List<User> cusDetails = customerDBUtil.getCustomerDetails(id);
                request.setAttribute("CusDetails", cusDetails);

                RequestDispatcher dispatcher = request.getRequestDispatcher("userProfile.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            // Handle the case where 'id' is null or empty
            // You can redirect to an error page or handle it as needed
            response.sendRedirect("errorPage.jsp");
        }
    }
}
