<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List"%>
<%@page import="searchPack.SearchForm"%>
<%@page import="uploadPack.*"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div id="searchIndex">
		<h2>&nbsp;תוצאות חיפוש:</h2>

		<%
		
		if (session.getAttribute("id") == null)
		{
			System.out.println("DEBUG :(");
			response.sendRedirect("index");
			return;
		}
		
		List<SearchForm> sf = DataBaseManager.getInstance().getSearchById(session.getAttribute("id").toString());

		if(sf.isEmpty())
			System.out.println("DEBUG3");
		
		List<UploadForm> list = DataBaseManager.getInstance().getEvent(sf.get(0));

		if(list == null)
			System.out.println("DEBUG!!!");
		
		else System.out.println("not null");
		
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
				<th>שם משתמש</th>
				<th></th>
			</tr>
			<%
			
		
			for (UploadForm item : list) {
			%>
			<form id="contact" action="sendMsg" method="post" type="hidden">
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
					System.out.println("ballroom is null"); %>
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
				
				<% if(item.getUsername() == null)
					System.out.println("username is null"); %>
				<td><%=item.getUsername()%></td>
					
				<td>
				<%
				if (session.getAttribute("username") == null) {
				%>
					<p> לפרטים נוספים בצע <a href="login">התחברות</a> או <a href="signUp">הרשמה</a></p>
				<%
				} else {
				%>
				<p style="padding-top: 15px" class="form_settings">
				
					<input type="text" name="msg" id="msg" class="textBox"
						placeholder="טקסט..." />
					<br>
					<input class="submit" type="submit" name="name"
						value="Send Message"/>
					<input type="hidden" name="theID" value="<%=item.getId()%>"/>
				</p>
				<%
				}
				%>
				</td>
				
				</tr>
			</form>
			<% } %>
		</table>
		<% } %>
		
		<%session.getAttribute("id"); %>
	</div>

</div>

<!-- end content -->

<%@ include file="footer.jsp"%>

