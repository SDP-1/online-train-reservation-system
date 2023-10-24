package com.servlet.loginRegAndAdminpanel;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.model.loginRegAndAdminpanel.Train;
import com.service.loginRegAndAdminpanel.TrainDAO;


@WebServlet("/TrainListServlet")
public class TrainListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TrainDAO trainDAO = new TrainDAO();
        List<Train> trains = trainDAO.getAllTrains();
        request.setAttribute("trains", trains);

        RequestDispatcher dispatcher = request.getRequestDispatcher("showExistingTrains.jsp");
        dispatcher.forward(request, response);
    }
}
