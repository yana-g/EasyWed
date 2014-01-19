package msgPack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbManager.DataBaseManager;
import uploadPack.UploadForm;

import java.util.List;

/**
 * Servlet implementation class SendMassege
 */

public class SendMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMessage() {
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
		Object msg = request.getParameter("msg");
			
		HttpSession session = request.getSession();
		String usernameFrom = (String)session.getAttribute("username");//////////
		
		List<UploadForm> list= DataBaseManager.getInstance().getEventByID(id.toString());

		if (list.size()!=0 )
		{
			MsgForm newMsg = new MsgForm(list.get(0), msg.toString(), usernameFrom.toString());///////////
			
			System.out.println("the id is " + newMsg.getId());
			System.out.println("the msg is " + newMsg.getMsg().toString());
			System.out.println("the getUserNameFrom is " + newMsg.getUserNameFrom().toString());
			System.out.println("the getUserNameTo is " + newMsg.getUserNameTo().toString());
			
			DataBaseManager.getInstance().insertNewMsg(newMsg);
		}
		else{
			System.out.println("no list");
		}
		
		response.sendRedirect("messageSuccess");

	}

}
