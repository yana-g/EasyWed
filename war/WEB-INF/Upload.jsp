<%@page import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
<%@page import="com.google.appengine.repackaged.com.google.api.client.util.store.DataStore"%>
<%@page import="dbManager.PMF"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div id="searchIndex">
		<h2>&nbsp;יצירת מודעה</h2>
		
		<div class="form_settings">
			<form>

				<p>עיר:</p>
				<select name="Area">
					<option value="-">-עיר-</option>
					<option value="-">ירושלים</option>
					<option value="-">תל-אביב</option>
					<option value="-">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="עיר..." name="other">
				
				<p>תאריך:</p>
				<select name="Area">
					<option value="-">-יום-</option>
					<option value="-">1</option>
					<option value="-">2</option>
					<option value="-">3</option>
					<option value="-">4</option>
					<option value="-">5</option>
					<option value="-">6</option>
					<option value="-">7</option>
					<option value="-">8</option>
					<option value="-">9</option>
					<option value="-">10</option>
					<option value="-">11</option>
					<option value="-">12</option>
					<option value="-">13</option>
					<option value="-">14</option>
					<option value="-">15</option>
					<option value="-">16</option>
					<option value="-">17</option>
					<option value="-">18</option>
					<option value="-">19</option>
					<option value="-">20</option>
					<option value="-">21</option>
					<option value="-">22</option>
					<option value="-">23</option>
					<option value="-">24</option>
					<option value="-">25</option>
					<option value="-">26</option>
					<option value="-">27</option>
					<option value="-">28</option>
					<option value="-">29</option>
					<option value="-">30</option>
					<option value="-">31</option>
				</select> &nbsp;&nbsp;&nbsp; <select name="Month">
					<option value="-">-חודש-</option>
					<option value="-">January</option>
					<option value="-">February</option>
					<option value="-">March</option>
					<option value="-">April</option>
					<option value="-">May</option>
					<option value="-">June</option>
					<option value="-">July</option>
					<option value="-">August</option>
					<option value="-">September</option>
					<option value="-">October</option>
					<option value="-">November</option>
					<option value="-">December</option>
				</select> &nbsp;&nbsp;&nbsp; <select name="Year">
					<option value="-">-שנה-</option>
					<option value="-">2013</option>
					<option value="-">2014</option>
					<option value="-">2015</option>
				</select>
				
				<p>אולם:</p>
				<select name="Ballroom">
					<option value="-">-בחר-</option>
					<option value="-">A</option>
					<option value="-">B</option>
					<option value="-">C</option>
					<option value="-">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="אולם..." name="other">
				
				<p>מאפר:</p>
				<select name="Make-up">
					<option value="-">-בחר-</option>
					<option value="-">A</option>
					<option value="-">B</option>
					<option value="-">C</option>
					<option value="-">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="מאפר..." name="other">
				
				<p>צלם:</p>
				<select name="Photographer">
					<option value="-">-בחר-</option>
					<option value="-">A</option>
					<option value="-">B</option>
					<option value="-">C</option>
					<option value="-">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="צלם..." name="other">
				
				<p>DJ:</p>
				<select name="DJ">
					<option value="-">-בחר-</option>
					<option value="-">A</option>
					<option value="-">B</option>
					<option value="-">C</option>
					<option value="-">אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <input type="text" placeholder="DJ..." name="other">


				<br>
				<p align="left" style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit" name="name" value="Submit" />
				</p>
			</form>
			<br>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>