package usersPack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.util.UUID;

import usersPack.User;
import dbManager.DataBaseManager;

/**
 * Servlet implementation class Registration
 */

public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
//		PrintWriter out = response.getWriter();

		Object firstName = request.getParameter("firstName");
		Object lastName = request.getParameter("lastName");
		Object userName = request.getParameter("username");
		Object mail = request.getParameter("email");
		Object password = request.getParameter("pwd");
		Object confPassword = request.getParameter("conPwd");
		
		System.out.println("the firstName is " + firstName.toString());
		System.out.println("the lastName is " + lastName.toString());
		System.out.println("the userName is " + userName.toString());
		System.out.println("the mail is " + mail.toString());
		System.out.println("the password is " + password.toString());
		System.out.println("the confPassword is " + confPassword.toString());
		
		HttpSession session = request.getSession();

/*		if (userName.equals("") || firstName.equals("") || lastName.equals("") || mail.equals("")) {
			Integer registerError = Integer.valueOf(1);
			session.setAttribute("registerError", registerError);
			out.println("One of the Mandatary field is empty");
		}

		if (password.equals("") || confPassword.equals("")) {
			Integer registerError = Integer.valueOf(1);
			session.setAttribute("registerError", registerError);
			out.println("Please enter a valid password.");
		}
		else if (!password.equals(confPassword)) {
			Integer registerError = Integer.valueOf(2);
			session.setAttribute("registerError", registerError);
			out.println("Your password and confirm password does not match.");
		}
*/
		if (userName != null && firstName != null && lastName != null && mail != null && password != null) 
		{

			User newUser = new User();
			newUser.setUserName(userName.toString());
			newUser.setFirstName(firstName.toString());
			newUser.setLastName(lastName.toString());
			newUser.setMail(mail.toString());
			newUser.setPassword(password.toString());

			session.setAttribute("username", newUser.getUserName());

			DataBaseManager.getInstance().insertNewUser(newUser);
		}
		System.out.println("logged in as " + userName);
		
		String sessionID = UUID.randomUUID().toString();
		session.setAttribute("userName", userName);
		session.setAttribute("sessionID", sessionID);
		System.out.println("the userName is " + userName.toString());
		response.sendRedirect("thankYou");
	}

}
