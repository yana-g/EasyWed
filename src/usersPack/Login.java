package usersPack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.UUID;
import java.io.PrintWriter;
import dbManager.DataBaseManager;

/**
 * Servlet implementation class Login
 */

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{

		PrintWriter out = response.getWriter();

		String userName = request.getParameter("theUserNameField");
		String password = request.getParameter("thePasswordField");

		HttpSession session = request.getSession();

		if (userName.equals("") || password.equals("")) {
			out.println("Enter a username and password.");
		}

		else if (DataBaseManager.getInstance().checkUser(userName, password)) {
			String sessionID = UUID.randomUUID().toString();
			session.setAttribute("userName", userName);
			session.setAttribute("sessionID", sessionID);
		}

		else {
			out.println("Either your username or password is incorrect or could not be found.");
			out.println("Please try again, or click the link below to register.");
		}
	}

}
