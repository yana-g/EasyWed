<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List"%>
<%@page import="uploadPack.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>
<%@ include file="profileMenubar.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div id="searchIndex">
		<h2>&nbsp;המודעות שלי</h2>

		<%

		List<UploadForm>list;

		if (session.getAttribute("username") == null)
		{
			response.sendRedirect("index");
			return;
		}	

			list = DataBaseManager.getInstance().getEventByName(session.getAttribute("username").toString());
			if(list == null) {
				System.out.println("null");
				response.sendRedirect("index");
				return;
			}		

		%>
		
		<% 
		if(list.size() == 0)
		{%>
			<p>&nbsp;אין מודעות</p>
		<%}
	
		else {%>
		<table>
			<tr>
				<th>עיר</th>
				<th>יום</th>
				<th>חודש</th>
				<th>שנה</th>
				<th>אולם</th>
				<th>מאפר</th>
				<th>צלם</th>
				<th>DJ</th>
				<th></th>
			</tr>
			
			
			<%
			for (UploadForm item : list) {
			%>
			<form id="contact" action="DelUpload" method="post" type="hidden">
			<tr>
					<% if(item.getCity() == null)
						System.out.println("city is null"); %>
					<td><%=item.getCity()%></td>					
	
					<% if(item.getDay() == null)
						System.out.println("day is null"); %>
					<td><%=item.getDay()%></td>					
	
					<% if(item.getMonth() == null)
						System.out.println("month is null"); %>
					<td><%=item.getMonth()%></td>				
	
					<% if(item.getYear() == null)
						System.out.println("year is null"); %>
					<td><%=item.getYear()%></td>		
	
					<% if(item.getBallroom() == null)
						System.out.println("Ballroom is null"); %>
					<td><%=item.getBallroom()%></td>
					
					<% if(item.getMakeUp() == null)
						System.out.println("make-up is null"); %>
					<td><%=item.getMakeUp()%></td>
	
					<% if(item.getPhotographer() == null)
						System.out.println("photographer is null"); %>
					<td><%=item.getPhotographer()%></td>				
	
					<% if(item.getDj() == null)
						System.out.println("dj is null"); %>
					<td><%=item.getDj()%></td>
		
		
					<td>
					<p style="padding-top: 15px" class="form_settings">
					<input class="submit" type="submit" name="id"
						value="Delete" />
					<input type="hidden" name="theID" value="<%=item.getId()%>"/>
				</p>
					
				<!-- 	<p style="padding-top: 15px" class="form_settings">
						<input class="submit" type="submit" name="id"
							value=<%//item.getId();%> /><button type="submit">delete</button>
					</p>  -->
					
					</td>
				</tr>
			</form>
			<% } %>
		</table>
			<% } %>
			
		<%session.getAttribute("username"); %>

		<br> <br> <br>
	</div>
</div>

<%@ include file="footer.jsp"%>


