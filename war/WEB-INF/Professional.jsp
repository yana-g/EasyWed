<%@page
	import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
<%@page
	import="com.google.appengine.repackaged.com.google.api.client.util.store.DataStore"%>
<%@page import="dbManager.PMF"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">
	<br>
	<div id="searchIndex">

		<h2>&nbsp;הרשמת בעלי מקצוע לאתר:</h2>

		<form id="contact" action="ProRegistration" method="post">

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
				<b>*</b>

				<p>שם העסק:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="businessName" id="businessName"
						class="textBox" required="required" placeholder="שם העסק..." />
					<b>*</b>
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
						required="required" placeholder="דואל..." />
					<b>*</b>
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
					שם משתמש:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="userName" id="userName" class="textBox"
						required="required" placeholder="שם משתמש..." />
					<b>*</b>
				</p>

				<p>
					סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="pwd" id="pwd" class="textBox"
						required="required" placeholder="סיסמה..." />
					<b>*</b>
				</p>

				<p>
					אשר סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="conPwd" id="pwd" class="textBox"
						required="required" placeholder="אשר סיסמה..." />
					<b>*</b>
				</p>

				<br>

				<p align="left" style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit" name="name"
						value="Submit" />
				</p>
			</div>
		</form>
		<br>
	</div>
	
</div>



<%@ include file="footer.jsp"%>