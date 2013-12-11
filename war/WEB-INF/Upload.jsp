<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="he" lang="he"	dir="rtl">

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

		<div class="content">

			<h1>Upload Service</h1>

			<p>Area:</p>
			<select name="Area">
				<option value="-">Choose</option>
				<option value="-">Jerusalem</option>
				<option value="-">Tel-Aviv</option>
				<option value="-">Other</option>
			</select> &nbsp;&nbsp;&nbsp; <input type="text" name="other">
			<p>date:</p>
			<select name="Area">
				<option value="-">Choose day</option>
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
			</select> &nbsp;&nbsp;&nbsp; <select name="Date">
				<option value="-">Choose month</option>
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
			</select>

			<h1>Business owners</h1>

			<!-------------- choose make up artist-------------------------------------------------->

			<label class="input-control radio"><input type="radio">&nbsp;Make-up
				artist&nbsp;&nbsp;&nbsp; <select name=" make up artist name">
					<option value="A">name</option>
					<option value="-">Other</option>
			</select> </label> <br> <br>
			<p>
				price:<input type="text" name="other">&nbsp;&nbsp;&nbsp;Email:<input
					type="text" name="other">
			</p>

			<!----------------choose ballroom------------------------------------------------------>

			<label class="input-control radio"> <input type="radio">&nbsp;Name
				of the ballroom&nbsp;&nbsp;&nbsp; <select name=" catering name">
					<option value="A">name</option>
					<option value="-">Other</option>
			</select>
			</label> <br> <br>
			<p>
				price:<input type="text" name="other">&nbsp;&nbsp;&nbsp;Email:<input
					type="text" name="other">
			</p>

			<!------------------ choose photographer---------------------------------------------->

			<label class="input-control radio"> <input type="radio">&nbsp;Photographer&nbsp;&nbsp;&nbsp;
				<select name=" photographer name">
					<option value="A">name</option>
					<option value="-">Other</option>
			</select>
			</label> <br> <br>
			<p>
				price:<input type="text" name="other">&nbsp;&nbsp;&nbsp;Email:<input
					type="text" name="other">
			</p>

			<!----------------- choose catering--------------------------------------------------------------->

			<label class="input-control radio"> <input type="radio">&nbsp;Catering&nbsp;&nbsp;&nbsp;
				<select name=" catering name">
					<option value="A">name</option>
					<option value="-">Other</option>
			</select>
			</label> <br> <br>
			<p>
				price:<input type="text" name="other">&nbsp;&nbsp;&nbsp;Email:<input
					type="text" name="other">
			</p>

			<form id="contact" action="ThankYou.jsp" method="post">
				<div class="form_settings">



					<p style="padding-top: 15px">
						<span>&nbsp;</span><input class="submit" type="submit"
							name="contact_submitted" value="send" />
					</p>
				</div>
			</form>
		</div>
	</div>
	<!-- end content -->




	<%@ include file="footer.jsp"%>
</body>
</html>

