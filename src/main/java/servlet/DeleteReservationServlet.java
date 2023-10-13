package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.ReservationUtil;

/**
 * Servlet implementation class DeleteReservationServlet
 */
@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve the reservation ID from the AJAX request
        int reservationId = Integer.parseInt(request.getParameter("reservationId"));
        int passengerCount = Integer.parseInt(request.getParameter("passengerCount"));
        int trainID = Integer.parseInt(request.getParameter("trainID"));

        boolean deletionIsSuccessful = ReservationUtil.deleteReservation(reservationId,passengerCount,trainID);
        
        String contextPath = request.getContextPath();
        response.sendRedirect(contextPath + "/ShowReservation.jsp");
        
//        response.setContentType("application/json");
        if (deletionIsSuccessful) {
//            response.getWriter().write("{\"status\":\"success\"}");
        } else {
//            response.getWriter().write("{\"status\":\"error\"}");
        }
		
	}

}
