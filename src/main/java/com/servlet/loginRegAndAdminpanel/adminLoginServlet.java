package com.servlet.loginRegAndAdminpanel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.loginRegAndAdminpanel.Admin;
import com.service.loginRegAndAdminpanel.customerDBUtil;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("adminuid"); // Catch from the form
        String password = request.getParameter("adminpass");

        try {
            boolean status = customerDBUtil.validateAdmin(username, password);
            if (status == true) {
                List<Admin> adminDetails = customerDBUtil.getAdmin(username); // Fetch admin details
                request.setAttribute("adminDetails", adminDetails);

                // Set session attribute for admin details
                HttpSession session = request.getSession();
                int indefiniteTimeout = -1; // Set the timeout to -1 for an indefinite session
                session.setMaxInactiveInterval(indefiniteTimeout);
                session.setAttribute("adminDetails", adminDetails);


                RequestDispatcher dis = request.getRequestDispatcher("adminHome.jsp"); // After successful login, redirect to the home page
                dis.forward(request, response);
            } else {
                RequestDispatcher dis = request.getRequestDispatcher("adminLogin.jsp"); // If unsuccessful, redirect to login again
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
