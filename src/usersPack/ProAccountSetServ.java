package usersPack;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbManager.DataBaseManager;

/**
 * Servlet implementation class ProAccountSetServ
 */

public class ProAccountSetServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProAccountSetServ() {
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
		Object password = request.getParameter("pwd");
		Object confPassword = request.getParameter("conPwd");
		
		HttpSession session = request.getSession();
		
		List<UserProfessionnal> proList = DataBaseManager.getInstance().getUserByPName(session.getAttribute("username").toString());
		
		System.out.println("the profession is " + profession.toString());
		System.out.println("the businessName is " + businessName.toString());
		System.out.println("the firstName is " + firstName.toString());
		System.out.println("the mail is " + mail.toString());
		System.out.println("the phone is " + phone.toString());
		System.out.println("the address is " + address.toString());
		System.out.println("the city is " + city.toString());
		System.out.println("the website is " + website.toString());
		System.out.println("the password is " + password.toString());

		if (!profession.equals(""))
			proList.get(0).setProfession(profession.toString());
		if (!businessName.equals(""))
			proList.get(0).setBusinessName(businessName.toString());
		if (!firstName.equals(""))
			proList.get(0).setFirstName(firstName.toString());
		if (!mail.equals(""))
			proList.get(0).setMail(mail.toString());
		if (!phone.equals(""))
			proList.get(0).setPhone(phone.toString());
		if (!address.equals(""))
			proList.get(0).setAddress(address.toString());
		if (!city.equals(""))
			proList.get(0).setCity(city.toString());
		if (!website.equals(""))
			proList.get(0).setWebsite(website.toString());
		if (!password.equals(""))
			proList.get(0).setPassword(password.toString());

		response.sendRedirect("profile");

	}

}
