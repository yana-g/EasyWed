<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.*"%>

<%
	String isLoggedIn = (session.getAttribute("login") == null
	? "no"
	: session.getAttribute("login").toString());
%>
<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml" lang="he"
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
				<h1>
					<a href="index">Wed4U</a>
				</h1>
			</div>

			<div class="searchBar">
				<form method="get" action="/search" id="search">
					<!-- <input name="q" type="text" size="30" placeholder="חיפוש..." />  -->
					
					<%
						if (session.getAttribute("username") == null) {
					%>
					
					&nbsp;&nbsp;&nbsp; <b><a href="signUp">הרשמה</a></b>
					&nbsp;&nbsp;&nbsp; <b><a href="professional">הרשמה לבעלי
							מקצוע</a></b>
					&nbsp;&nbsp;&nbsp; <b><a href="login">התחברות</a></b>
				

					
					<%
						} else {
					%>

					&nbsp;&nbsp;&nbsp; <b><a href="logout">התנתק</a></b>
					&nbsp;&nbsp;&nbsp; <b>
						<%
							List<User> list;
								list = DataBaseManager.getInstance().getUserByName(session.getAttribute("username").toString());
								if(list.size()==0){
									List<UserProfessionnal> list1;
									list1 = DataBaseManager.getInstance().getUserByPName(session.getAttribute("username").toString());
									for (UserProfessionnal item : list1) 
									{

										out.println("שלום " + item.getBusinessName() + " ");
									}
								}
								else{
									for (User item : list) 
									{
	
										out.println("שלום " + item.getFirstName() + " "+ item.getLastName() + "");
									}
								}
						%>
					</b>

					<% } %>
				</form>
			</div>

		</div>

		<nav>
			<div id="menu_container" align="left">
				<ul class="sf-menu" id="nav">

					<li><b><a href="contact"><font face="choco" size="6">צור קשר</font></a></b></li>
					<li><a href="aboutUs"><font face="choco" size="6">מי אנחנו?</font></a></li>
					<li><b><a href="upload"><font face="choco" size="6">העלאת מודעה</font></a></b></li>
					<li><b><a href="profile"><font face="choco" size="6">פרופיל</font></a></b></li>
					<li><b><a href="search"><font face="choco" size="6">חיפוש</font></a></b></li>
					<li><b><a href="index"><font face="choco" size="6">עמוד הבית</font></a></b></li>

				</ul>
			</div>
		</nav>

		<!-- start content -->