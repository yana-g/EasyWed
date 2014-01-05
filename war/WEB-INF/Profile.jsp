<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>

	
<!DOCTYPE html>

<%@ include file="header.jsp"%>
<%@ include file="profileMenubar.jsp"%>

<!-- begin content -->
<div id="site_content">
	<div id="searchIndex">

	<%
	
	if(session.getAttribute("userName") == null)
	{
	%>
		נא לבצע התחברות
	
	
	<% } else { %>
<!-- 		<h2>&nbsp;שלום אורח!</h2>
		<br>
		<h2>&nbsp;יש לך 3 פניות חדשות</h2>
-->

	<% 
	List<User>list;
	list = DataBaseManager.getInstance().getUserByName(session.getAttribute("userName").toString());
	for (User item : list)
	{ 
	
		out.println("<h2>שלום " + item.getFirstName() + " " + item.getLastName()+ "</h2>");
	}
	}
	%>



	</div>
	
	<!-- start here -->

	
	<!-- end here -->
	
</div>
<%@ include file="footer.jsp"%>


