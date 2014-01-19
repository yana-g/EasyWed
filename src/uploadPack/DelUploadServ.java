package uploadPack;
import dbManager.DataBaseManager;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import searchPack.SearchForm;
import dbManager.DataBaseManager;

/**
 * Servlet implementation class DelUploadServ
 */

public class DelUploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DelUploadServ() {
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

		Object id = request.getParameter("theID");	
		DataBaseManager.getInstance().deleteOrderByFormID(id.toString());
		DataBaseManager.getInstance().deleteMsgByFormID(id.toString());
		DataBaseManager.getInstance().deleteUpload(id.toString());
		
		response.sendRedirect("myUploads");
		
	}

}
