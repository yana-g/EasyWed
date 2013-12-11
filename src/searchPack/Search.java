package searchPack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Search
 */

public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
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

		PrintWriter out = response.getWriter();

		String event = request.getParameter("theEventField");
		String date = request.getParameter("theDateField");
		String ballroom = request.getParameter("theBallroomField");
		String city = request.getParameter("theCityField");
		String professional = request.getParameter("theProfessionalField");

		HttpSession session = request.getSession();

		if (event.equals("") && date.equals("") && ballroom.equals("") && city.equals("") && professional.equals("")) {
			out.println("Select your search criterias");
		}
		
		else {
			
		}
			
	}

}
