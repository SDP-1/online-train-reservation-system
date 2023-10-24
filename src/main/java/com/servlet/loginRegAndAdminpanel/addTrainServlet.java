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

@WebServlet("/addTrainServlet")
public class addTrainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tName = request.getParameter("trainName");
        String tStart = request.getParameter("trainStart");
        String tEnd = request.getParameter("trainEnd");
        int tSeatCount = 0; // Initialize the seat count as 0

        try {
            tSeatCount = Integer.parseInt(request.getParameter("seatCount"));
        } catch (NumberFormatException e) {
            // Handle the case where the parameter cannot be parsed as an integer
            RequestDispatcher dis2 = request.getRequestDispatcher("adminError.jsp");
            dis2.forward(request, response);
            return; // Exit the servlet
        }

        boolean isTrue;

        isTrue = adminDBUtil.addTrain(tName, tStart, tEnd, tSeatCount);

        if (isTrue) {
            RequestDispatcher dis = request.getRequestDispatcher("adminSuccess.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("adminError.jsp");
            dis2.forward(request, response);
        }
    }
}
