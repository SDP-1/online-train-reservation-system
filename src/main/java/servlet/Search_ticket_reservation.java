package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LogInUser;
import model.ReservationSearch;

/**
 * Servlet implementation class Search_ticket_reservation
 */
@WebServlet("/Search_ticket_reservation")
public class Search_ticket_reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search_ticket_reservation() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  start_point = request.getParameter("start-point-name");
		String  degnination = request.getParameter("degnination-name");
		String reservation_date = request.getParameter("recevation-date");
		int passenger_count = Integer.parseInt(request.getParameter("passengerCount"));
		String is_select = request.getParameter("flexSwitchCheckDefault");
		
		ReservationSearch reservationSearch = new ReservationSearch(start_point,degnination,reservation_date,passenger_count);
		
//		List<ReservationSearch> search = new ArrayList<>();
//		search.add(reservationSearch);
		RequestDispatcher dispatcher;
		
		if(LogInUser.getUserId() > 0) {
			 dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/showAvailableTrainsLogInUser.jsp");
		}else {
			dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/showAvailableTrains.jsp");
		}
		
		request.setAttribute("reservationSearch", reservationSearch);
		dispatcher.forward(request, response);
	}

}
