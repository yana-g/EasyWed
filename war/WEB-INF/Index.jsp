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

		<h8>Welcome to Wed4u</h8>


		<script id="slideShow" type="text/javascript">
			var image1 = new Image()
			image1.src = "images/wedding77.jpg"
			var image2 = new Image()
			image2.src = "images/Wedding-Cake.jpg"
			var image3 = new Image()
			image3.src = "images/wedding6.jpg"
			var image4 = new Image()
			image4.src = "images/rotator-wedding-61.jpg"
			var image5 = new Image()
			image5.src = "images/wedding1.jpg"
			var image6 = new Image()
			image6.src = "images/wedding2.jpeg"
			var image7 = new Image()
			image7.src = "images/wedding10.jpg"
			var image8 = new Image()
			image8.src = "images/wedding3.jpg"
				var image9 = new Image()
			image9.src = "images/wedding5.jpg"
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
				if (step < 9)
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
			<form>

				<select id="event" class="comboBox">
					<option selected>-סוג האירוע-</option>
					<option>חתונה</option>
					<option>בר/בת מצווה</option>
					<option>ברית/בריתה</option>
					<option>אירוסין</option>
					<option>אחר</option>
				</select> &nbsp;&nbsp;&nbsp; <select id="date"
					class="date-input-container-checkin">
					<option selected>-תאריך-</option>
					<option>1.1.2014</option>
					<option>1.5.2014</option>
					<option>15.11.2013</option>
					<option>16.11.2013</option>
				</select> &nbsp;&nbsp;&nbsp; <select id="Ballroom" class="comboBox">
					<option selected>-אולם-</option>
					<option>ללא</option>
					<option>רימונים</option>
					<option>אולמי תפוז</option>
					<option>אולמי רמת-רחל</option>
				</select> &nbsp;&nbsp;&nbsp; <select id="city" class="comboBox">
					<option selected>-איזור-</option>
					<option>ירושלים</option>
					<option>בית-חורון</option>
					<option>באר-שבע</option>
				</select> &nbsp;&nbsp;&nbsp; <select id="pro" class="comboBox">
					<option selected>-בעל מקצוע-</option>
					<option>ללא</option>
					<option>צלם</option>
					<option>מאפר/ת</option>
					<option>להקה</option>
				</select> <br> <br>
				<p style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit" name="name"
						value="Search" />
				</p>

			</form>
			<br>
		</div>
	</div>

</div>
<script>
	$("form").submit(function(event) {
		if ($("input:first").val() === "correct") {
			$("span").text("Validated...").show();
			return;
		}

		$("span").text("!Not valid").show().fadeOut(1000);
		event.preventDefault();
	});
</script>

<%@ include file="footer.jsp"%>