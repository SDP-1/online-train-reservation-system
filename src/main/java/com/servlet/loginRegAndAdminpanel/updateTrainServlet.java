package com.servlet.loginRegAndAdminpanel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.loginRegAndAdminpanel.adminDBUtil;

@WebServlet("/updateTrainServlet")
public class updateTrainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String tid = request.getParameter("tid");
        int sc = Integer.parseInt(request.getParameter("sc")); // Convert to int

        boolean isTrue;

        isTrue = adminDBUtil.updateTrain(tid, sc);

        if (isTrue) {
            RequestDispatcher dis = request.getRequestDispatcher("adminSuccess.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("adminError.jsp"); // If update unsuccessful, redirect to this
            dis2.forward(request, response);
        }
    }
}
