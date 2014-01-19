<%@page import="org.apache.jsp.ah.datastoreViewerBody_jsp"%>
<%@page import="dbManager.DataBaseManager"%>
<%@page import="usersPack.User"%>
<%@page import="java.util.List"%>
<%@page import="uploadPack.*"%>
<%@page import="msgPack.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div id="menu_container" align="left">
	<br> <br>
	<ul class="sf-menu" id="nav">


		<li><a href="accountSet"><font face="choco" size="5">עדכון פרטים</font></a></li>
		<%List<UploadForm> list502;
		list502 = DataBaseManager.getInstance().getEventByName(session.getAttribute("username").toString());
		int count=list502.size();%>
		<li><a href="myUploads"><font face="choco" size="5">המודעות שלי (<%out.println(count); %>) </font></a></li>
		
		<%List<orderObj> list501;
		
		list501 = DataBaseManager.getInstance().getOrderByName(session.getAttribute("username").toString());
		count=list501.size();%>
		<li><a href="myOrders"><font face="choco" size="5">ההזמנות שלי (<%out.println(count); %>)</font></a></li>
		<%List<MsgForm> list500;
		list500 = DataBaseManager.getInstance().getMsgByName(session.getAttribute("username").toString());
		count=list500.size();%>

		<li><a href="inbox"><font face="choco" size="5">ההודעות שלי (<%out.println(count); %>)</font></a></li>

	

	</ul>
</div>