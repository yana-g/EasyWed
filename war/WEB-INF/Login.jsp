<%@page import="dbManager.DataBaseManager" %>
<%@page import="usersPack.User" %>
<%@page import="java.util.List;" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="he" lang="he"
	dir="rtl">
<head>
<link rel="stylesheet" href="Test1.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="he" />

<title>**Wed4U**</title>

</head>
<body>

	<%@ include file="header.jsp"%>

	<!-- begin content -->
	<div id="site_content">

	<!-- <div class="content"> -->
		<div class="center">
			<br> <br>

			<form id="contact" action="Index.jsp" method="post">
				<div class="form_settings">
					<div class="fieldName">UserName:</div>
					<div class="field">
						<input type="text" name="username" id="username" class="textBox"
							required="required" />
					</div>
					<div style="clear: both"></div>
					<br> <br>
					<div class="fieldName">Password:</div>
					<div class="field">
						<input type="password" name="pwd" id="pwd" class="textBox"
							required="required" />
					</div>
					<div style="clear: both"></div>
					<br>
					<p style="padding: 15px 400px 15px">
						<input class="submit" type="submit" name="name" value="Login" />
					</p>
				</div>
			</form>
		</div>

	</div>

	<!--  </div>-->
	<!-- end content -->

	<%@ include file="footer.jsp"%>
</body>
</html>

