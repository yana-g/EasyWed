package msgPack;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uploadPack.UploadForm;
import dbManager.DataBaseManager;

/**
 * Servlet implementation class sellEventServ
 */

public class sellEventServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellEventServ() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		Object id = request.getParameter("theID");
		Object userName = request.getParameter("theUsername");
		
		Object msg = request.getParameter("msg");
			System.out.println("this is the uploadform id: " +id.toString());
			System.out.println("this is the sender username: " +userName.toString());

		HttpSession session = request.getSession();
		String usernameFrom = (String)session.getAttribute("username");//////////
		
		List<MsgForm> list= DataBaseManager.getInstance().getMsgById(id.toString());

		if (list.size()!=0 )
		{	
			System.out.println("the id is " + list.get(0).id_form);
			List<UploadForm> uploadList=DataBaseManager.getInstance().getEventByID(list.get(0).getId_form());
			uploadList.get(0).setStatus(true);
			list.get(0).setStatus(true);
			orderObj newOrd = new orderObj(list.get(0));
			
			DataBaseManager.getInstance().insertNewUpload(uploadList.get(0));
			DataBaseManager.getInstance().insertNewMsg(list.get(0));
			
			System.out.println("the id is " + newOrd.getId());
			System.out.println("the getUserNameFrom is " + newOrd.getUserNameFrom().toString());
			System.out.println("the getUserNameTo is " + newOrd.getUserNameTo().toString());
			
			DataBaseManager.getInstance().insertNewOrd(newOrd);
		}
		else{
			System.out.println("**no list");
		}
		response.sendRedirect("sellSuccess");
	}

}
