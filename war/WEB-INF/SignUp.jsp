<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List;"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div id="searchIndex">

		<h2>&nbsp;הרשמה:</h2>

		<form id="contact" action="Registration" method="post">

			<div class="form_settings">
				
				<p>שם פרטי:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="firstName" id="username" class="textBox"
						required="required" placeholder="שם פרטי..." />
				</p>

				<p>שם משפחה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="lastName" id="username" class="textBox"
						required="required" placeholder="שם משפחה..." />
				</p>
				
				<p>שם משתמש:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="username" id="username" class="textBox"
						required="required" placeholder="שם משתמש..." />
				</p>
								
				<p>דוא"ל:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="email" id="email" class="textBox"
						required="required" placeholder="דואל..." />
				</p>
				
				<p>סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="pwd" id="pwd" class="textBox"
						required="required" placeholder="סיסמה..." />
				</p>

				<p>אשר סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="conPwd" id="pwd" class="textBox"
						required="required" placeholder="אשר סיסמה..." />
				</p>

				<br> <br>

				<p align="left" style="padding: 15px 400px 15px">
					<input class="submit" type="submit" name="name" value="SignUp" />
				</p>

				<p align="left" style="padding: 15px 400px 15px">
					<input class="submitFB" type="submit" name="name"
						value="SignUp through Facebook" />
				</p>
			</div>
		</form>
	</div>
</div>

<!-- end content -->

<%@ include file="footer.jsp"%>


