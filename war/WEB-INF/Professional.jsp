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

	<div id="searchIndex">
		<h2>&nbsp;הרשמת בעלי מקצוע לאתר:</h2>

		<div class="form_settings">
			<form>
				<p>מקצוע:</p>
				<select id="profession" class="comboBox">
					<option selected>בחר</option>
					<option>צלם</option>
					<option>מעצב פרחים</option>
					<option>בעל אולם אירועים</option>
					<option>מאפר\ת</option>
					<option>בעל חברת קייטרינג</option>
					<option>להקה\DJ</option>
					<option>מומחה לעיצוב</option>
					<option>אחר</option>
				</select> &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="אחר..."
					name="other">

				<p>
					שם העסק:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="firstName" id="firstName" class="textBox"
						required="required" placeholder="שם העסק..." />
				</p>

				<p>
					שם פרטי:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="lastName" id="lastName" class="textBox"
						placeholder="שם פרטי..." />
				</p>

				<p>
					דוא"ל:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="email" id="email" class="textBox"
						required="required" placeholder="דואל..." />
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
				<select id="city" class="comboBox">
					<option selected>בחר</option>
					<option>ירושלים</option>
					<option>תל-אביב</option>
					<option>חדרה</option>
					<option>באב-אל חליל</option>
				</select> &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="אחר..."
					name="other">

				<p>
					אתר:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="website" id="website" class="textBox"
						placeholder="כתובת אינטרנט..." />
				</p>

				<p>
					שם משתמש:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="username" id="username" class="textBox"
						required="required" placeholder="שם משתמש..." />
				</p>

				<p>
					סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="pwd" id="pwd" class="textBox"
						required="required" placeholder="סיסמה..." />
				</p>

				<p>
					אשר סיסמה:
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" name="pwd" id="pwd" class="textBox"
						required="required" placeholder="אשר סיסמה..." />
				</p>

				<br>

				<p align="left" style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit" name="name"
						value="Submit" />
				</p>
			</form>
			<br>
		</div>
	</div>

</div>

<%@ include file="footer.jsp"%>