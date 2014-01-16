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

</div>


<%@ include file="footer.jsp"%>