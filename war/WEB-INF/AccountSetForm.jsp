<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div id="searchIndex">

		<h2>&nbsp;עדכון פרטים:</h2>

		<%
		List<User> userList;
		userList = DataBaseManager.getInstance().getUserByName(session.getAttribute("username").toString());
		if(userList.size()!=0){
		%>

		<form id="contact" action="UserAccountSetServ" method="post">

			<div class="form_settings">
				
				<p>שם פרטי:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="firstName" id="username" class="textBox"
						 placeholder="שם פרטי..." />
				</p>

				<p>שם משפחה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="lastName" id="username" class="textBox"
						 placeholder="שם משפחה..." />
				</p>
						
				<p>דוא"ל:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="email" id="email" class="textBox"
						 placeholder="דואל..." />
				</p>
				
				<p>סיסמה חדשה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="pwd" id="pwd" class="textBox"
						 placeholder="סיסמה..." />
				</p>

				<p>אשר סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="conPwd" id="pwd" class="textBox"
						 placeholder="אשר סיסמה..." />
				</p>

				<br> <br>

				<p align="left" style="padding: 15px 400px 15px">
					<input class="submit" type="submit" name="name" value="Save" />
				</p>
			 
			</div>
		</form>
		<%
		}
		
		else {
			List<UserProfessionnal> proList;
			proList = DataBaseManager.getInstance().getUserByPName(session.getAttribute("username").toString());
		%>	
			<form id="contact" action="ProAccountSetServ" method="post">

			<div class="form_settings">

				<p>מקצוע:</p>
				<select id="profession" name="profession" class="comboBox">
					<option value="-">-מקצוע-</option>
					<option value="photographer">צלם</option>
					<option value="flourist">מעצב פרחים</option>
					<option value="ballroom">בעל אולם אירועים</option>
					<option value="makeupartist">מאפר\ת</option>
					<option value="catering">בעל חברת קייטרינג</option>
					<option value="band">להקה\DJ</option>
					<option value="expert">מומחה לעיצוב</option>
					<option value="other">אחר</option>
				</select> &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="אחר..."
					name="other_profession">

				<p>
					שם העסק:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="businessName" id="businessName"
						class="textBox" required="required" placeholder="שם העסק..." />
				</p>

				<p>
					שם פרטי:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="firstName" id="firstName" class="textBox"
						placeholder="שם פרטי..." />
				</p>

				<p>
					דוא"ל:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="email" id="email" class="textBox"
						 placeholder="דואל..." />
				</p>

				<p>
					טלפון:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="tel" name="phone" id="phone" class="textBox"
						placeholder="טלפון..." />
				</p>

				<p>
					כתובת:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="address" id="address" class="textBox"
						placeholder="כתובת..." />
				</p>

				<p>עיר:</p>
				<select name="city">
					<option value="-">-עיר-</option>
					<option value="Jerusalem">ירושלים</option>
					<option value="Tel-Aviv">תל-אביב</option>
					<option value="Haifa">חיפה</option>
					<option value="Hadera">חדרה</option>
					<option value="Herzliya">הרצליה</option>
					<option value="Petah-Tikva">פתח תקווה</option>
					<option value="Modi'in">מודיעין</option>
					<option value="other">אחר</option>
				</select> &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="אחר..."
					name="other_city">

				<p>
					אתר:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="website" id="website" class="textBox"
						placeholder="כתובת אינטרנט..." />
				</p>

				<p>
					סיסמה חדשה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="pwd" id="pwd" class="textBox"
						 placeholder="סיסמה..." />
				</p>

				<p>
					אשר סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="conPwd" id="pwd" class="textBox"
						 placeholder="אשר סיסמה..." />
				</p>

				<br>

				<p align="left" style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit" name="name"
						value="Save" />
				</p>
			</div>
		</form>
			
		<%	
		}
		%>
		
		
		
	</div>
</div>

<!-- end content -->

<%@ include file="footer.jsp"%>


