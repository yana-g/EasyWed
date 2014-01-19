<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div class="content1" align="center">
		<h7>!Thank You</h7>

		<%
		
		//System.out.println("DEBUG1");
		List<UserProfessionnal>list;
		if (session.getAttribute("username") == null)
		{
			//System.out.println("DEBUG2");
			list = DataBaseManager.getInstance().getUserPro();
	
		}	
		else
		{
		//	System.out.println("DEBUG3");
			if(DataBaseManager.getInstance().getUserByPName(session.getAttribute("username").toString()) == null)
				System.out.println("null");
			else
				System.out.println("null002");
			list = DataBaseManager.getInstance().getUserByPName(session.getAttribute("username").toString());
			if(list == null)
				System.out.println("DEBUG!!!!!!!!!!!!!!!!!!!!!!!!");
			else System.out.println("not null");
			
		}
		%>
		<% System.out.println("DEBUG4"); %>
		<table>
			<tr>
				<th>מקצוע</th>
				<th>שם העסק</th>
				<th>שם פרטי</th>
				<th>דוא"ל</th>
				<th>טלפון</th>
				<th>כתובת</th>
				<th>עיר</th>
				<th>אתר</th>
				<th>שם משתמש</th>
			</tr>
			<%
			
			for (UserProfessionnal item : list) {
			%>
			<tr>

				<td><%=item.getProfession()%></td>
				<% System.out.println(item.getProfession()); %>

				<td><%=item.getBusinessName()%></td>
				<% System.out.println(item.getBusinessName()); %>

				<% if(item.getFirstName() == null)
					System.out.println("firstname is null"); %>
				<td><%=item.getFirstName()%></td>
				<% System.out.println(item.getFirstName()); %>

				<td><%=item.getMail()%></td>
				<% System.out.println(item.getMail()); %>
				
				<% if(item.getPhone() == null)
					System.out.println("phone is null"); %>
				<td><%=item.getPhone()%></td>
				<% System.out.println(item.getPhone()); %>

				<% if(item.getAddress() == null)
					System.out.println("address is null"); %>
				<td><%=item.getAddress()%></td>
				<% System.out.println(item.getAddress()); %>

				<td><%=item.getCity()%></td>
				<% System.out.println(item.getCity()); %>


				<% if(item.getWebsite() == null)
					System.out.println("website is null"); %>
				<td><%=item.getWebsite()%></td>
				<% System.out.println(item.getWebsite()); %>

				<td><%=item.getUserName()%></td>
				<% System.out.println(item.getUserName()); %>

			</tr>
			<% 
			}	
			System.out.println("Success");
			%>

		</table>
		<%session.getAttribute("username"); %>

	</div>

</div>
<!-- end content -->

<%@ include file="footer.jsp"%>

