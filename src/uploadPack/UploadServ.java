package uploadPack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbManager.DataBaseManager;

/**
 * Servlet implementation class Upload
 */
//@WebServlet("/Upload")
public class UploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServ() {
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

		Object city = request.getParameter("city");
		if(city.equals("-")|| city.equals("other"))
			city = request.getParameter("other_city");
		
		Object day = request.getParameter("day");
		Object month = request.getParameter("month");
		Object year = request.getParameter("year");
		
		Object ballroom = request.getParameter("ballroom");
		if(ballroom.equals("-")|| ballroom.equals("other"))
			ballroom = request.getParameter("other_ballroom");
		
		Object makeUp = request.getParameter("makeUp");
		if(makeUp.equals("-")|| makeUp.equals("other"))
			makeUp = request.getParameter("other_makeUp");
		
		Object photographer = request.getParameter("photographer");
		if(photographer.equals("-")|| photographer.equals("other"))
			photographer = request.getParameter("other_photographer");
		
		Object dj = request.getParameter("dj");
		if(dj.equals("-")|| dj.equals("other"))
			dj = request.getParameter("other_dj");
		
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		

		System.out.println("the city is " + city.toString());
		System.out.println("the day is " + day.toString());
		System.out.println("the month is " + month.toString());
		System.out.println("the year is " + year.toString());
		System.out.println("the ballroom is " + ballroom.toString());
		System.out.println("the makeUp is " + makeUp.toString());
		System.out.println("the photographer is " + photographer.toString());
		System.out.println("the dj is " + dj.toString());
		System.out.println("the user is " + username);
		
		if (city != null && day != null && month != null && year != null && ballroom != null && 
				makeUp != null && photographer != null && dj != null)
		{

			UploadForm newUpload = new UploadForm();
			newUpload.setUsername(username);
			newUpload.setCity(city.toString());
			newUpload.setDay(day.toString());
			newUpload.setMonth(month.toString());
			newUpload.setYear(year.toString());
			newUpload.setBallroom(ballroom.toString());
			newUpload.setMakeUp(makeUp.toString());
			newUpload.setPhotographer(photographer.toString());
			newUpload.setDj(dj.toString());
		
			DataBaseManager.getInstance().insertNewUpload(newUpload);
		}
		
		response.sendRedirect("myUploads");
	}

}
