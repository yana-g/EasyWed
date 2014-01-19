package usersPack;

import java.io.IOException;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbManager.DataBaseManager;

/**
 * Servlet implementation class UserAccountSetServ
 */

public class UserAccountSetServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAccountSetServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		Object firstName = request.getParameter("firstName");
		Object lastName = request.getParameter("lastName");
		Object mail = request.getParameter("email");
		Object password = request.getParameter("pwd");
		Object confPassword = request.getParameter("conPwd");
		
		System.out.println("the firstName is " + firstName.toString());
		System.out.println("the lastName is " + lastName.toString());
		System.out.println("the mail is " + mail.toString());
		System.out.println("the password is " + password.toString());
		System.out.println("the confPassword is " + confPassword.toString());
		
		HttpSession session = request.getSession();

		List<User> userList = DataBaseManager.getInstance().getUserByName(session.getAttribute("username").toString());
		
		if (!firstName.equals("")) 
			userList.get(0).setFirstName(firstName.toString());	
		if (!lastName.equals("")) 
			userList.get(0).setLastName(lastName.toString());	
		if (!mail.equals("")) 
			userList.get(0).setMail(mail.toString());		
		if (!password.equals("")) 
			userList.get(0).setPassword(password.toString());
		
		response.sendRedirect("profile");
		
	}

}
