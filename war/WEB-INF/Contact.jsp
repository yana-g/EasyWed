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
           
      <div class="content">
        <h1>צרו איתנו קשר</h1>
  
        <form id="contact" action="ThankYou.jsp" method="post">
          <div class="form_settings">
            <p><span>שם מלא</span><input class="contact" type="text" name="your_name" value="your name..." /></p>
            <p><span>Email</span><input class="contact" type="text" name="your_email" value="your email..." /></p>
            <p><span>גוף ההודעה</span><textarea class="contact textarea" rows="5" cols="50" name="your_message">your message...</textarea></p>
            <p style="line-height: 1.7em;">על מנת למנוע ספאם, נא מלאו שדה זה עם הטקסט:</p>
            <p><span></span><input type="text" name="user_answer" /><input type="hidden" name="answer" value="<?php echo $answer; ?>" /></p>
            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="contact_submitted" value="send" /></p>
          </div>
        </form>
      </div>
    </div>
    <!-- end content -->

		



		
		

	<%@ include file="footer.jsp" %>
</body>
</html>
