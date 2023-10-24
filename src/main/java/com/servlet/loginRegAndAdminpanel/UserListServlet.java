package com.servlet.loginRegAndAdminpanel;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.model.loginRegAndAdminpanel.User;
import com.service.loginRegAndAdminpanel.UserDAO;


@WebServlet("/UserListServlet")
public class UserListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        List<User> users = UserDAO.getAllUsers();
        request.setAttribute("users", users);

        RequestDispatcher dispatcher = request.getRequestDispatcher("showExistingUsers.jsp");
        dispatcher.forward(request, response);
    }
}
