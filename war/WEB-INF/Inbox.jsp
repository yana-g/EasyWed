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
		<h2>&nbsp;הודעות שלי</h2>
		<%
		
		List<MsgForm>list;
		List<UploadForm> tmp;
		UploadForm upload;
		if (session.getAttribute("username") == null)
		{
			response.sendRedirect("index");
			return;
		}	
		list= DataBaseManager.getInstance().getMsgByName(session.getAttribute("username").toString());
		System.out.println("size: "+list.size());
		//list 
			if(list.size()==0) {
				System.out.println(" the list is null");
				{%>
		<p>&nbsp;אין הודעות</p>
		<%}
				return;
			}	
			else if(list.size()!=0){
				System.out.println("the list is not null, it has "+ list.size() + " msg");
			}

		%>

		<% 
		if(list.size() != 0)
		{%>
		<%
			%>
		<table>
			<tr>
				<th>שם השולח</th>
				<th>הודעה</th>
				<th>עיר</th>
				<th>יום</th>
				<th>חודש</th>
				<th>שנה</th>
				<th>אולם</th>
				<th>מאפר</th>
				<th>צלם</th>
				<th>DJ</th>
				<th>סטטוס</th>
				<th>למכור</th>
				
			</tr>


			<%
			for (MsgForm item : list) {
				tmp=DataBaseManager.getInstance().getEventByID(item.getId_form());
				if(tmp==null || tmp.size()==0)
					continue;
				upload=tmp.get(0);
				
			%>
			<form id="contact" action="sellServ" method="post" type="hidden">
				<tr>
					<% if(item.getUserNameFrom() == null)
						System.out.println("userFrom is null"); %>
					<td><%=item.getUserNameFrom()%></td>

					<% if(item.getMsg() == null)
						System.out.println("msg is null"); %>
					<td><%=item.getMsg()%></td>
					<%  %>
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
					<td><%="Not Sold"%></td>
					<%} %>
					<% if(item.getStatus() == true){
						System.out.println("satatus is true"); %>
					<td><%="Sold"%></td>
					<%} %>

					<% if(item.getStatus() == false){
						System.out.println("satatus is false"); %>
					<td>
						<p style="padding-top: 0px" class="form_settings">
							<input class="submit" type="submit" name="id" value="Sell Event" />
							<input type="hidden" name="theID" value="<%=item.getId()%>" />
							 <input	type="hidden" name="theUsername" value="<%=item.getUserNameFrom()%>" />
						</p>

					</td>
				</tr>
				<%
				// item.setStatus(true);
				}
				%>
					
						</form>
										
						
						
				
			
			<% } %>
			
		</table>
	<% } %>

		<%session.getAttribute("username"); %>

		<br> <br> <br>
	</div>
</div>

<%@ include file="footer.jsp"%>


