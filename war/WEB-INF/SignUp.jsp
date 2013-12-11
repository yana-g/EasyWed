
<%@page import="dbManager.DataBaseManager" %>
<%@page import="usersPack.User" %>
<%@page import="java.util.List;" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="he" lang="he" dir="rtl">
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
			<form id="contact" action="ThankYou.jsp" method="post">

				<div class="form_settings">
					<div class="fieldName">UserName:</div>
					<div class="field">
						<input type="text" name="username" id="username" class="textBox"
							required="required" />
					</div>
					<div class="fieldName">FirstName:</div>
					<div class="field">
						<input type="text" name="firstname" id="firstname" class="textBox"
							required="required" />
					</div>
					<div class="fieldName">LastName:</div>
					<div class="field">
						<input type="text" name="lastname" id="lastname" class="textBox"
							required="required" />
					</div>
					<div style="clear: both"></div>
					<div class="fieldName">E-Mail:</div>
					<div class="field">
						<input type="email" name="email" id="email" class="textBox"
							required="required" />
					</div>
					<br> <br>
					<div class="fieldName">Password:</div>
					<div class="field">
						<input type="password" name="pwd" id="pwd" class="textBox"
							required="required" />
					</div>
					<div style="clear: both"></div>
					<br> <br>
					<div class="fieldName">Confirm Password:</div>
					<div class="field">
						<input type="password" name="pwd" id="pwd" class="textBox"
							required="required" />
					</div>
					<div style="clear: both"></div>
					<br> <br>
					
					<div style="clear: both"></div>
					<br> <br>

					<p style="padding: 15px 400px 15px">
						<input class="submit" type="submit" name="name" value="SignUp" />
					</p>

				</div>
			</form>

			<div class="form_settings">
				<form id="contact" action="Index.jsp" method="get">
					<p style="padding: 15px 400px 15px">
						<input class="submitFB" type="submit" name="name"
							value="SignUp through Facebook" />
					</p>
				</form>
			</div>

			<h5 style="font-family: Times New Roman;">
				By clicking "Submit" I agree that:<br> <label
					class="input-control radio"> <input type="radio"
					required="required">
				</label> I have read and accepted the User Agreement and Privacy Policy.<br>
				<label class="input-control radio"> <input type="radio"
					required="required">
				</label> I may receive communications from Wed4U and can change my
				notification preferences in MyProfilePage.

			</h5>
		</div>
	</div>


	<!-- end content -->




	<%@ include file="footer.jsp"%>
</body>
</html>

