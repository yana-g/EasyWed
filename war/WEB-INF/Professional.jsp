<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="he" lang="he" dir="rtl">
<head>   
	<link rel="stylesheet" href="Test1.css" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="Content-Language" content="he" />
    
	<title>**Wed4U**</title>


</head>
<body>

	
	<%@ include file="header.jsp" %>
	


	

	<!-- begin content -->
		<div id="site_content">

			<!-- begin sidebar -->
			
			<!-- end sidebar -->

	
		<!-- end content -->
      
      <div class="content">
      <form id="contact" action="ThankYou.jsp" method="post">
      	<div class="form_settings">
	        <h1>הרשמת בעלי מקצוע לאתר:</h1>
			<form>
				<div class="fieldName">אני...:	</div>
					<div class="field">
						<select id="profession"  class="comboBox">
				        	<option selected>בחר</option>
				            <option>צלם</option>
				            <option>מעצב פרחים</option>
				            <option>בעל אולם אירועים</option>
				            <option>מאפר\ת</option>
				            <option>בעל חברת קייטרינג</option>
				            <option>להקה\DJ</option>
				            <option>מומחה לעיצוב</option>
				            <option>אחר</option>
				        </select>
					</div>
			
			<div class="fieldName">שם עסקי:</div>
				<div class="field">
					<input type="text" name="firstName" id="firstName" class="textBox" required="required"/>
				</div>
			    <div style="clear:both"></div>
		    
		    <div class="fieldName">שם פרטי:</div>
				<div class="field">
					<input type="text" name="lastName" id="lastName" class="textBox" />
				</div> 
			    <div style="clear:both"></div>
	
		    <div style="clear:both"></div>
		    <div class="fieldName">Email:</div>
				<div class="field">
					<input type="text" name="email" id="email" class="textBox" required="required" />
				</div>
		    	<div style="clear:both"></div>
		    
		    <div class="fieldName">מספר טלפון:</div>
				<div class="field">
					<input type="tel" name="phone" id="phone" class="textBox" />
				</div>
				<div style="clear:both"></div>
		    
		    <div class="fieldName">כתובת:</div>
				<div class="field">
					<input type="text" name="address" id="address" class="textBox" />
				</div>
				<div style="clear:both"></div>
		    
		    <div class="fieldName">עיר:</div>
				<div class="field">
					<select id="city"  class="comboBox">
			        	<option selected>בחר</option>
			            <option>ירושלים</option>
			            <option>תל-אביב</option>
			            <option>חדרה</option>
			            <option>באב-אל חליל</option>
					</select>
			  	</div>
	
		    <div class="fieldName">אתר:</div>
				<div class="field">
					<input type="text" name="website" id="website" class="textBox"  />
				</div>
				<div style="clear:both"></div>
	
		    <div class="fieldName">סיסמה:</div>
				<div class="field">
					<input type="password" name="pwd" id="pwd" class="textBox" required="required" />
				</div>
			    <div style="clear:both"></div>
		    
		    <div class="fieldName">אשר סיסמה:</div>
				<div class="field">
					<input type="password" name="pwd" id="pwd" class="textBox" required="required" />
				</div>
		    	<div style="clear:both"></div>
		
			    <br> 
			    <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="name" value="Submit" /></p>
			</form>
			<br>
		</div>
				
	</form>
	
		<h5 style ="font-family: Times New Roman;">
			By clicking "Submit" I agree that:<br>
			
			<label class="input-control radio"> <input type="radio" required="required"> </label>
				I have read and accepted the User Agreement and Privacy Policy.<br>
			<label class="input-control radio"> <input type="radio"  required="required"> </label>
				I may receive communications from Wed4U and can change my notification preferences in MyProfilePage.
			
		</h5>
      </div>
    </div>
    	
    <!-- end content -->

	
		

	<%@ include file="footer.jsp" %>
</body>
</html>

