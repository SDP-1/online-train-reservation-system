package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ContactUs;
import model.LogInUser;
import util.ContactUsUtill;


/**
 * Servlet implementation class SaveContactUsServlet
 */
@WebServlet("/SaveContactUsServlet")
public class SaveContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveContactUsServlet() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("yourName");
		String email = request.getParameter("yourEmail");
		String mobile = request.getParameter("yourMobile");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");

		ContactUs contactUs = new ContactUs(name, email, mobile, subject, message);

		
		//-----------
		
		ContactUsUtill.addNewComplane(contactUs);
		
		String contextPath = request.getContextPath();
        response.sendRedirect(contextPath + "/index.jsp");

		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");

//		request.setAttribute("reservation", reservation);
//		dispatcher.forward(request, response);
		
	}

}
