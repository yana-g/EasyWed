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

		<%
	if(session.getAttribute("username") == null)
	{
	%>
		נא לבצע התחברות
		<% }

	else { %>

		<h2>&nbsp;יצירת מודעה</h2>

		<div class="form_settings">
			<form action="UploadServ" method="post">

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
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="עיר..."
					name="other_city">

				<p>תאריך:</p>
				<select name="day">
					<option value="-">-יום-</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select> &nbsp;&nbsp;&nbsp; <select name="month">
					<option value="-">-חודש-</option>
					<option value="January">January</option>
					<option value="February">February</option>
					<option value="March">March</option>
					<option value="April">April</option>
					<option value="May">May</option>
					<option value="June">June</option>
					<option value="July">July</option>
					<option value="August">August</option>
					<option value="September">September</option>
					<option value="October">October</option>
					<option value="November">November</option>
					<option value="December">December</option>
				</select> &nbsp;&nbsp;&nbsp; <select name="year">
					<option value="-">-שנה-</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
				</select>

				<p>אולם:</p>
				<select name="ballroom">
					<option value="-">-בחר-</option>
					<option value="Rimonim">רימונים</option>
					<option value="Haahuzah">האחוזה</option>
					<option value="Al-Hayam">על הים</option>
					<option value="Villa Socca">וילה סוקה</option>
					<option value="Troya-Garden">טרויה</option>
					<option value="Caselio">קסליו</option>
					<option value="Cassiopeia">קסיופאה</option>
					<option value="other">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="אולם..."
					name="other_ballroom">

				<p>מאפר:</p>
				<select name="makeUp">
					<option value="-">-בחר-</option>
					<option value="Alona Bell">אלונה בל</option>
					<option value="Barak Ben-Hayun">ברק בן חיון</option>
					<option value="Tali Power">טלי פאוור</option>
					<option value="Yaniv Harel">יניב הראל</option>
					<option value="Kelly Dolev">קלי דולב</option>
					<option value="other">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="מאפר..."
					name="other_makeUp">

				<p>צלם:</p>
				<select name="photographer">
					<option value="-">-בחר-</option>
					<option value="AD Studio">AD Studio</option>
					<option value="Dudu Koren">דודו קורן</option>
					<option value="ZOOG Productions">זוג הפקות</option>
					<option value="Mark Berber Photography">Mark Berber -Photography</option>
					<option value="LOOK Zalamim">צלמים LOOK</option>
					<option value="other">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="צלם..."
					name="other_photographer">

				<p>מוזיקה:</p>
				<select name="dj">
					<option value="-">-בחר-</option>
					<option value="DJS">DJS ליסט הפקות</option>
					<option value="DJ-Aristo">DJ Aristo</option>
					<option value="Elephant-DJs">Elephant DJs</option>
					<option value="Silence">Silence</option>
					<option value="Vision">Vision</option>
					<option value="other">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="DJ..."
					name="other_dj"> <br>
				<p align="left" style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit" name="name"
						value="Submit" />
				</p>
			</form>
			<br>
		</div>
		<% } %>
	</div>
</div>

<%@ include file="footer.jsp"%>