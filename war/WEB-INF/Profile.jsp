<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>


<!DOCTYPE html>

<%@ include file="header.jsp"%>

<%
	if (session.getAttribute("username") != null) {
%>
<%@ include file="profileMenubar.jsp"%>
<%
	}
%>

<!-- begin content -->
<div id="site_content">
	<div id="searchIndex">

		<%
			if (session.getAttribute("username") == null) {
		%>
		נא לבצע התחברות

		<%
			} else {
		%>

		<%
			List<User> list;
				list = DataBaseManager.getInstance().getUserByName(
						session.getAttribute("username").toString());
				for (User item : list) {

					out.println("<h2>שלום " + item.getFirstName() + " "
							+ item.getLastName() + "</h2>");
				}
			}
		%>

	</div>

</div>
<%@ include file="footer.jsp"%>


