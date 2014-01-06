<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>

<%
	String isLoggedIn = (session.getAttribute("login") == null
			? "no"
			: session.getAttribute("login").toString());
%>
<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="he" lang="he"
	dir="rtl">

<head>
<title>Wed4U</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<link rel="stylesheet" href="/css/Test.css" type="text/css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
<link rel="shortcut icon" href="flowinfinity-20131110-favicon.ico">
<link rel="shortcut icon" href="flowinfinity-20131110-favicon.ico">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
</head>

<script>
	$(document).ready(function() {
		$("submit").click(function() {
			alert("חיפוש לפי:  " + $("#test").val());
		});
	});
</script>
</head>

<body>

	<div id="main">
		<!-- begin header -->
		<div id="logo">

			<div id="logo_text">
				<!-- class="logo_colour", allows you to change the color of the text -->
				<h1>
					<a href="index">Wed4U</a>
				</h1>
			</div>

			<div class="searchBar">
				<form method="get" action="/search" id="search">
					<input name="q" type="text" size="30" placeholder="חיפוש..." />
					&nbsp;&nbsp;&nbsp; <b><a href="signUp">הרשמה</a></b>
					&nbsp;&nbsp;&nbsp; <b><a href="professional">הרשמה לבעלי
							מקצוע</a></b>

					<%
						if (session.getAttribute("userName") == null) {
					%>
					&nbsp;&nbsp;&nbsp; <b><a href="login">התחברות</a></b>
					<%
						} else {
					%>

					&nbsp;&nbsp;&nbsp; <b><a href="logout">התנתק</a></b>
					&nbsp;&nbsp;&nbsp; <b><%  List<User>list;
	list = DataBaseManager.getInstance().getUserByName(session.getAttribute("userName").toString());
	for (User item : list)
	{ 
	
		out.println("שלום " + item.getFirstName() + " " + item.getLastName()+ "");
	}%></b>

					<%
						}
					%>


				</form>
			</div>

		</div>
		
		<nav>
			<div id="menu_container" align="left">
				<ul class="sf-menu" id="nav">

					<li><a href="contact"><font face="Antiochus">צור
								קשר</font></a></li>
					<li><a href="upload"><font face="Antiochus">העלאת
								מודעה</font></a></li>
					<li><a href="profile"><font face="Antiochus">פרופיל</font></a></li>
					<li><a href="index"><font face="Antiochus">עמוד
								הבית</font></a></li>

				</ul>
			</div>
		</nav>

		<!-- start content -->