package usersPack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
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
		PrintWriter out = response.getWriter();

		String userName = request.getParameter("theUserNameField");
		String firstName = request.getParameter("theFirstNameField");
		String lastName = request.getParameter("theLastNameField");
		String mail = request.getParameter("theMailField");
		String password = request.getParameter("thePasswordField");
		String confPassword = request.getParameter("thePhoneField");

		/*
		System.out.println("the UserName is " + userName.toString());
		System.out.println("the FirstName is " + firstName.toString());
		System.out.println("the LastName is " + lastName.toString());
		System.out.println("the mail is " + mail.toString());
		System.out.println("the password is " + password.toString());
		 */

		HttpSession session = request.getSession();

		if (userName.equals("") || firstName.equals("") || lastName.equals("") || mail.equals("")) {
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

		if (userName != null && firstName != null && lastName != null && mail != null && password != null) {

			User newUser = new User();
			newUser.setUserName(userName);
			newUser.setFirstName(firstName);
			newUser.setLastName(lastName);
			newUser.setMail(mail);
			newUser.setPassword(password);

			session.setAttribute("userName", newUser.getUserName());

			DataBaseManager.getInstance().insertNewUser(newUser);
		}
	}

}
