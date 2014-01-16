<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div class="content1">
		<h7>!Thank You</h7>

		<%
		
		//System.out.println("DEBUG1");
		List<User>list;
		if (session.getAttribute("username") == null)
		{
			//System.out.println("DEBUG2");
			list = DataBaseManager.getInstance().getUser();
	
		}	
		else
		{
		//	System.out.println("DEBUG3");
			if(DataBaseManager.getInstance().getUserByName(session.getAttribute("username").toString()) == null)
				System.out.println("null");
			else
				System.out.println("null002");
			list = DataBaseManager.getInstance().getUserByName(session.getAttribute("username").toString());
			if(list == null)
				System.out.println("DEBUG!!!!!!!!!!!!!!!!!!!!!!!!");
			else System.out.println("not null");
			
		}
		%>
		<% System.out.println("DEBUG4"); %>
		<table>
			<tr>
				<th>שם פרטי</th>
				<th>שם משפחה</th>
				<th>שם משתמש</th>
				<th>דוא"ל</th>
				<th>סיסמה</th>
			</tr>
			<%
			
			for (User item : list) {
			%>
			<tr>

				<% if(item.getFirstName() == null)
					System.out.println("first name is null"); %>
				<td><%=item.getFirstName()%></td>
				<% System.out.println(item.getFirstName()); %>
				<% if(item.getLastName() == null)
					System.out.println("last name is null"); %>
				<td><%=item.getLastName()%></td>
				<% System.out.println(item.getLastName()); %>
				<% if(item.getUserName() == null)
					System.out.println("username is null"); %>
				<td><%=item.getUserName()%></td>
				<% System.out.println(item.getUserName()); %>
				<% if(item.getMail() == null)
					System.out.println("mail is null"); %>
				<td><%=item.getMail()%></td>
				<% System.out.println(item.getMail()); %>
				<% if(item.getPassword() == null)
					System.out.println("password is null"); %>
				<td><%=item.getPassword()%></td>
				<% System.out.println(item.getPassword()); %>


			</tr>
			<% 
			}	
			//System.out.println("Success");
			%>

		</table>
		<%session.getAttribute("username"); %>
	</div>

</div>

<!-- end content -->

<%@ include file="footer.jsp"%>

