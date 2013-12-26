<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List;"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div class="content1">
		<h7>!Thank You</h7>

		<%
		List<User>list;
		if (session.getAttribute("userName") == null) {
			list = DataBaseManager.getInstance().getUser();
		}	
		else {
			list = DataBaseManager.getInstance().getUserData(session.getAttribute("UserName").toString());
		}
		%>

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
				<td><%=item.getFirstName()%></td>
				<td><%=item.getLastName()%></td>
				<td><%=item.getUserName()%></td>
				<td><%=item.getMail()%></td>
				<td><%=item.getPassword()%></td>
			</tr>
			<%
			}
			%>
		</table>


	</div>

</div>
<!-- end content -->

<%@ include file="footer.jsp"%>

