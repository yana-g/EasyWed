<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html dir="rtl">

<head>
<title>Wed4U</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="css/test1.css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
<link rel="shortcut icon" href="flowinfinity-20131110-favicon.ico">

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
</head>

<script>
$(document).ready(function()
{
  $("submit").click(function()
  {
    alert("חיפוש לפי:  " + $("#test").val());
  }
  );
});
</script>
</head>
<body>

	<div id="main">

		<!-- begin header -->
		<header>
			<div id="logo">
				<div id="logo_text" >
					<!-- class="logo_colour", allows you to change the color of the text -->
					<h1>
						<a href="Index.jsp">Wed4U</a>
					</h1>
				</div>
				<div class="searchBar">
					<form method="get" action="/search" id="search">


						<input name="q" type="text" size="30" placeholder="חיפוש..." />
						&nbsp;&nbsp;&nbsp; <b><a href="SignUp.jsp">הרשמה</a></b>
						&nbsp;&nbsp;&nbsp; <b><a href="Professional.jsp">הרשמה לבעלי מקצוע</a></b>
						&nbsp;&nbsp;&nbsp; <b><a href="Login.jsp">התחברות</a></b>
						
					</form>
				</div>
			</div>
			<nav>
				<div id="menu_container" align="left">
					<ul class="sf-menu" id="nav" >
						
						<li><a href="Contact.jsp"><font face="Antiochus">צור
									קשר</font></a></li>
						<!--  <li><a href="Professional.jsp"><font face="Antiochus">בעל
									מקצוע</font></a></li>-->
						<li><a href="Upload.jsp"><font face="Antiochus">העלאת
									מודעה</font></a></li>
						<li><a href="Profile.jsp"><font face="Antiochus">פרופיל</font></a></li>
						<li><a href="Index.jsp"><font face="Antiochus">עמוד
									הבית</font></a></li>




					</ul>
				</div>
			</nav>
		</header>


<!-- start content -->