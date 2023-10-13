package servlet;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Reservation;
import model.TicketDetails;
import util.ReservationUtil;

/**
 * Servlet implementation class PlaceReservation
 */
@WebServlet("/PlaceReservation")
public class PlaceReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlaceReservation() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Step 1: Retrieve the data from the hidden input fields
		int userId = Integer.parseInt(request.getParameter("userId"));
		int trainNumber = Integer.parseInt(request.getParameter("train_number"));
		String trainName = request.getParameter("train_name");
		String startPoint = request.getParameter("start_point");
		String endPoint = request.getParameter("end_point");
		String reservationDate = request.getParameter("reservation_date");
		int passengerCount = Integer.parseInt(request.getParameter("passenger_count"));
		double unitPrice = Double.parseDouble(request.getParameter("unit_price"));
		double totalPrice = Double.parseDouble(request.getParameter("total_price"));

		// Step 2: Create an instance of the JavaBean class and set its properties
		Reservation reservation = new Reservation();

		reservation.setUserid(userId);
		reservation.setTrain_number(trainNumber);
		reservation.setTrainName(trainName);
		reservation.setStart_point(startPoint);
		reservation.setEnd_point(endPoint);
		reservation.setReservation_date(reservationDate);
		reservation.setPassenger_count(passengerCount);
		reservation.setUnitPrice(unitPrice);
		reservation.setTotalPrice(totalPrice);

		ReservationUtil.addNewReservation(reservation);
		
		String contextPath = request.getContextPath();
        response.sendRedirect(contextPath + "/ShowReservation.jsp");

//		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
//
//		request.setAttribute("reservation", reservation);
//		dispatcher.forward(request, response);

	}

}
