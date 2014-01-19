package searchPack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbManager.DataBaseManager;
import uploadPack.*;

import java.util.List;
/**
 * Servlet implementation class Upload
 */
//@WebServlet("/Upload")
public class SearchServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchServ() {
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

		HttpSession session = request.getSession();

		Object city = request.getParameter("city");		
		Object day = request.getParameter("day");	
		Object month = request.getParameter("month");
		Object year = request.getParameter("year");
		Object ballroom = request.getParameter("ballroom");	

		System.out.println("the city is " + city.toString());
		System.out.println("the day is " + day.toString());
		System.out.println("the month is " + month.toString());
		System.out.println("the year is " + year.toString());
		System.out.println("the ballroom is " + ballroom.toString());

		if (city != null && day != null && month != null && year != null && ballroom != null)
		{

			SearchForm newSearch = new SearchForm();
			if(!city.toString().equals("-"))
				newSearch.setCity(city.toString());
			if(!day.toString().equals("-"))
				newSearch.setDay(day.toString());
			if(!month.toString().equals("-"))
				newSearch.setMonth(month.toString());
			if(!year.toString().equals("-"))
				newSearch.setYear(year.toString());
			if(!ballroom.toString().equals("-"))
				newSearch.setBallroom(ballroom.toString());

			session.setAttribute("id", newSearch.getId());

			DataBaseManager.getInstance().insertSearch(newSearch);
		}		

		//enter the SearchForm id to session


		response.sendRedirect("searchResult");
	//	request.getRequestDispatcher("/SearchResult.jsp").forward(request, response);

			}

}
