package usersPack;

import java.io.IOException;
import java.util.List;


import java.util.UUID;



//import javax.jdo.annotations.Persistent;
//import javax.jdo.annotations.PrimaryKey;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;







import dbManager.DataBaseManager;

/**
 * Servlet implementation class ProRegistration
 */
//@WebServlet("/ProRegistration")
public class ProRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProRegistration() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		Object profession = request.getParameter("profession");
		if(profession.equals("-")|| profession.equals("other"))
			profession = request.getParameter("other_profession");
		
		Object businessName = request.getParameter("businessName");
			
		Object firstName = request.getParameter("firstName");
		
		Object mail = request.getParameter("email");
		
		Object phone = request.getParameter("phone");
		
		Object address = request.getParameter("address");
		
		Object city = request.getParameter("city");
		if(city.equals("-")|| city.equals("other"))
			city = request.getParameter("other_city");
		
		Object website = request.getParameter("website");
		Object userName = request.getParameter("userName");
		Object password = request.getParameter("pwd");
		Object confPassword = request.getParameter("conPwd");

		if(!password.equals(confPassword))
		{
			System.out.println("login failed - passwords need to be the same");
			response.sendRedirect("professional");
			return;
		}
		if(mail!=null && ((String) mail).indexOf("@")==-1)
		{
			System.out.println("login failed - check your mail!");
			response.sendRedirect("professional");
			return;
		}
		System.out.println("the profession is " + profession.toString());
		System.out.println("the businessName is " + businessName.toString());
		System.out.println("the firstName is " + firstName.toString());
		System.out.println("the mail is " + mail.toString());
		System.out.println("the phone is " + phone.toString());
		System.out.println("the address is " + address.toString());
		System.out.println("the city is " + city.toString());
		System.out.println("the website is " + website.toString());
		System.out.println("the userName is " + userName.toString());
		System.out.println("the password is " + password.toString());

		
		HttpSession session = request.getSession();

		if (profession != null && businessName != null && mail != null && city != null && userName != null && password!=null) 
		{

			UserProfessionnal Professionnal = new UserProfessionnal();
			Professionnal.setProfession(profession.toString());
			Professionnal.setBusinessName(businessName.toString());
			Professionnal.setFirstName(firstName.toString());
			Professionnal.setMail(mail.toString());
			Professionnal.setPhone(phone.toString());
			Professionnal.setAddress(address.toString());
			Professionnal.setCity(city.toString());
			Professionnal.setWebsite(website.toString());
			Professionnal.setUserName(userName.toString());
			Professionnal.setPassword(password.toString());

			List<UserProfessionnal> list=DataBaseManager.getInstance().getUserByPName(Professionnal.getUserName());
			if(list.size()!=0){
				response.sendRedirect("UserExists");
				return;
			}
			session.setAttribute("username", Professionnal.getUserName());

			DataBaseManager.getInstance().insertNewPro(Professionnal);
		}
		String sessionID = UUID.randomUUID().toString();
		session.setAttribute("username", userName);
		session.setAttribute("sessionID", sessionID);
		System.out.println("the user name is " + userName.toString());
		response.sendRedirect("profile");	}

}


