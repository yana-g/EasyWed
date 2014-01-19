<%@page
	import="org.apache.tools.ant.types.CommandlineJava.SysProperties"%>
<%@page import="org.apache.jsp.ah.datastoreViewerBody_jsp"%>
<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List"%>
<%@page import="uploadPack.*"%>
<%@page import="msgPack.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>
<%@ include file="profileMenubar.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div id="searchIndex">
		<h2>&nbsp;ההזמנות שלי</h2>
		<%
		
		List<orderObj> list;
		List<MsgForm> msg;
		List<UploadForm> tmp;
		UploadForm upload;
		if (session.getAttribute("username") == null)
		{
			response.sendRedirect("index");
			return;
		}	
		list= DataBaseManager.getInstance().getOrderByName(session.getAttribute("username").toString());
		System.out.println("size: "+list.size());
		//list 
			if(list.size()==0)
			{
				System.out.println(" the order list is null"); %>
				<p>&nbsp;אין הזמנות</p>

			<%	return;
			}	
			else if(list.size()!=0)
			{
				System.out.println("the order list is not null, it has "+ list.size() + " orders");
			}

		%>

		<% 
		if(list.size() != 0)
		{%>
		<%
			%>
		<table>
			<tr>
				<th>שם המוכר</th>
				<th>עיר</th>
				<th>יום</th>
				<th>חודש</th>
				<th>שנה</th>
				<th>אולם</th>
				<th>מאפר</th>
				<th>צלם</th>
				<th>DJ</th>
				<th>סטטוס</th>


			</tr>


			<%
			for (orderObj item : list) 
			{
				System.out.println(item.getId_m());
				msg=DataBaseManager.getInstance().getMsgById(item.getId_m());
				tmp=DataBaseManager.getInstance().getEventByID(msg.get(0).getId_form()); //getId_m
				if(tmp==null || tmp.size()==0)
				{
					System.out.println("null or size 0");
					continue;
				}
				upload=tmp.get(0);
				
				
				
			%>

			<tr>
				<% if(item.getUserNameFrom() == null)
						System.out.println("userFrom is null"); %>
				<td><%=item.getUserNameFrom()%></td>


				<% if(upload.getCity() == null)
						System.out.println("city is null"); %>
				<td><%=upload.getCity()%></td>

				<% if(upload.getDay() == null)
						System.out.println("day is null"); %>
				<td><%=upload.getDay()%></td>

				<% if(upload.getMonth() == null)
						System.out.println("month is null"); %>
				<td><%=upload.getMonth()%></td>

				<% if(upload.getYear() == null)
						System.out.println("year is null"); %>
				<td><%=upload.getYear()%></td>

				<% if(upload.getBallroom() == null)
						System.out.println("Ballroom is null"); %>
				<td><%=upload.getBallroom()%></td>

				<% if(upload.getMakeUp() == null)
						System.out.println("make-up is null"); %>
				<td><%=upload.getMakeUp()%></td>

				<% if(upload.getPhotographer() == null)
						System.out.println("photographer is null"); %>
				<td><%=upload.getPhotographer()%></td>

				<% if(upload.getDj() == null)
						System.out.println("dj is null"); %>
				<td><%=upload.getDj()%></td>

				<% if(item.getStatus() == false){
						System.out.println("satatus is false"); %>
				<td><%="לא קניתי.."%></td>
				<%} %>
				<% if(item.getStatus() == true){
						System.out.println("satatus is false"); %>
				<td><%="קניתיייייי"%></td>
				<%} %>




				</form>





				<% } %>
			
		</table>
		<% } %>

		<%session.getAttribute("username"); %>

		<br> <br> <br>
	</div>
</div>

<%@ include file="footer.jsp"%>


