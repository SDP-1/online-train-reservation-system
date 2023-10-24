package com.servlet.loginRegAndAdminpanel;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogoutServlet")
public class adminLogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the user's session
        HttpSession session = request.getSession();

        // Invalidate the session to log the user out
        session.invalidate();

        // Redirect to the login page or any other page after logout
        response.sendRedirect("adminLogin.jsp"); // Change to your login page URL
    }
}
