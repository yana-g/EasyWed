<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List;"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<!--
		String userName = request.getParameter("username");
		String password = request.getParameter("pwd");
		if(userName != null && password != null)
			{
			
				if(DataBaseManager.checkUser(userName, password) == true)
				{
					//session.setAttribute("currStudent", userName);
                    String redirectURL = "profile.jsp";
                    response.sendRedirect(redirectURL);  
				}
			}
-->
 
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div class="center" id="searchIndex">

		<h2>&nbsp;כניסה למערכת:</h2>

		<form id="contact" action="LogedIn" method="post">
			<div class="form_settings">

				<input type="text" name="username" id="username" class="textBox"
					required="required" placeholder="שם משתמש..." /> 
					
				<input type="password" name="pwd" id="pwd" class="textBox"
					required="required" placeholder="סיסמה..." />

				<p style="padding: 15px 400px 15px">
					<input class="submit" type="submit" name="name" value="Login" />
				</p>
			
				<p style="padding: 15px 400px 15px">
					<a href="signUp"><h2>משתמש חדש? הרשם כאן</h2></a>
					
					<a href="professional"><h2>איש מקצוע חדש? לחץ כאן</h2></a>
				</p>
				
			</div>
		</form>
	</div>

</div>

<!--  </div>-->
<!-- end content -->

<%@ include file="footer.jsp"%>


