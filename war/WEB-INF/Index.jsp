<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="he" lang="he"
	dir="rtl">
<head>
<link rel="stylesheet" href="Test1.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="he" />

<title>**Wed4U**</title>

</head>
<body>

	<%@ include file="header.jsp"%>

	<!-- begin content -->
	<div id="site_content">

		<div id="searchIndex">
			<h2>&nbsp מה אתם מחפשים?</h2>
			<!-- 	<form action= -->
			<div class="form_settings">
				<form>

					<div class="field">
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
						</select>
					</div>

					<br>
					<p style="padding-top: 15px">
						<span>&nbsp;</span><input class="submit" type="submit" name="name"
							value="Submit" />
					</p>
				</form>
				<br>
			</div>
		</div>

	</div>
	<script>
$( "form" ).submit(function( event ) {
  if ( $( "input:first" ).val() === "correct" ) {
    $( "span" ).text( "Validated..." ).show();
    return;
  }
 
  $( "span" ).text( "!Not valid" ).show().fadeOut( 1000 );
  event.preventDefault();
});
</script>


	<%@ include file="footer.jsp"%>
</body>
</html>

