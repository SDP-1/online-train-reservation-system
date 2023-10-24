package com.servlet.loginRegAndAdminpanel;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.model.loginRegAndAdminpanel.Manager;
import com.service.loginRegAndAdminpanel.ManagerDAO;


@WebServlet("/ManagerListServlet")
public class ManagerListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ManagerDAO managerDAO = new ManagerDAO();
        List<Manager> managers = ManagerDAO.getAllManagers();
        request.setAttribute("managers", managers);

        RequestDispatcher dispatcher = request.getRequestDispatcher("showExistingManagers.jsp");
        dispatcher.forward(request, response);
    }
}
