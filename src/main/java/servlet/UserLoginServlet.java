package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LogInUser;


@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		try {
			
			int uid  = util.customerDBUtil.validate(username, password);
			if(uid > 0) {
				LogInUser.setUserId(uid);
				
				//create session
				request.getSession().setAttribute("user_id", uid);
				
				RequestDispatcher dis = request.getRequestDispatcher("indexLogInUser.jsp");   /// after successful login, redirect to home page
				dis.forward(request, response);
			}else {
				RequestDispatcher dis = request.getRequestDispatcher("login.jsp"); /// is unsuccessful , redirect to login again
				dis.forward(request, response);
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
			
	}
	

}
