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
	<div id="slideShow">

		<center><font color="#F5A9BC" face= "Jenna Sue" size ="20">Welcome to Wed4u</font></center>


		<script id="slideShow" type="text/javascript">
			var image1 = new Image();
			image1.src = "images/wedding77.jpg";
			var image2 = new Image();
			image2.src = "images/Wedding-Cake.jpg";
			var image3 = new Image();
			image3.src = "images/wedding6.jpg";
			var image4 = new Image();
			image4.src = "images/rotator-wedding-61.jpg";
			var image5 = new Image();
			image5.src = "images/wedding1.jpg";
			var image6 = new Image();
			image6.src = "images/wedding2.jpeg";
			var image7 = new Image();
			image7.src = "images/wedding10.jpg";
			var image8 = new Image();
			image8.src = "images/wedding3.jpg";
				var image9 = new Image();
			image9.src = "images/wedding5.jpg";
			var image10 = new Image();
			image10.src = "images/Weddings3.jpg";
			var image11 = new Image();
			image11.src = "images/Weddings.jpg";
			var image12 = new Image();
			image12.src = "images/wedding-photo.jpg";
			
		</script>

		<!-- </head> -->
		<!-- <body>  -->
		<p>
			<img src="images/pentagg.jpg" width="890" height="350" name="slide"/>
		</p>
		<script type="text/javascript">
			var step = 1;
			function slideit() {
				document.images.slide.src = eval("image" + step + ".src");
				if (step < 12)
					step++;
				else
					step = 1;
				setTimeout("slideit()", 5000);
			}
			slideit();
		</script>
		<!-- </body>  -->




	</div>
	<div id="searchIndex">
		<h2>&nbsp; מה אתם מחפשים?</h2>

		<div class="form_settings">
			<form action="SearchServ" method="post">
				
				<select id="city" class="comboBox" name="city">
					<option value="-">-עיר-</option>
					<option value="Jerusalem">ירושלים</option>
					<option value="Tel-Aviv">תל-אביב</option>
				</select> &nbsp;&nbsp;&nbsp; 
				
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
				</select> &nbsp;&nbsp;&nbsp; 
				
				<select name="month">
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
				</select> &nbsp;&nbsp;&nbsp; 
				
				<select name="year">
					<option value="-">-שנה-</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
				</select> &nbsp;&nbsp;&nbsp;
				
				<select id="Ballroom" class="comboBox" name="ballroom">
					<option value="-">-אולם-</option>
					<option>רימונים</option>
					<option>אולמי תפוז</option>
					<option>אולמי רמת-רחל</option>
				</select> &nbsp;&nbsp;&nbsp; 
				
				<!-- 
				<select id="pro" class="comboBox" name="pro">
					<option value="-">-בעל מקצוע-</option>
					<option value="photographer">צלם</option>
					<option value="makeUp">מאפר/ת</option>
					<option value="dj">DJ</option>
					<option value="band">להקה</option>
				</select> <br> <br>  -->
				
				<p style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit" name="name"
						value="Search" />
				</p>

			</form>
			<br>
		</div>
	</div>

</div>


<%@ include file="footer.jsp"%>