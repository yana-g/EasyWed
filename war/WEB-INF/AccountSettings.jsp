<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="header.jsp"%>
<%@ include file="profileMenubar.jsp"%>

<!-- begin content -->
<div id="site_content">

	<div id="searchIndex">
		<h2>&nbsp;עדכון פרטים</h2>

		<%
		List<User> userList;
		List<UserProfessionnal> proList;
		
		if (session.getAttribute("username") == null)
		{
			userList = DataBaseManager.getInstance().getUser();	
			proList = DataBaseManager.getInstance().getUserPro();
		}	
		else
		{
			if(DataBaseManager.getInstance().getUserByName(session.getAttribute("username").toString()) == null
					&& DataBaseManager.getInstance().getUserByPName(session.getAttribute("username").toString()) == null)
				System.out.println("null");
			else
				System.out.println("null01");
			
			userList = DataBaseManager.getInstance().getUserByName(session.getAttribute("username").toString());
			proList = DataBaseManager.getInstance().getUserByPName(session.getAttribute("username").toString());
			
			if(userList == null && proList == null )
				System.out.println("DEBUG!");
			else System.out.println("not null");
			
		}
		%>

		<%
		if(userList.size() != 0) {
		%>
		<table>
			<tr>
				<th>שם פרטי</th>
				<th>שם משפחה</th>
				<th>שם משתמש</th>
				<th>דוא"ל</th>
				<th>סיסמה</th>
			</tr>
			<%	
			for (User item : userList) {
			%>
			<tr>
				<% if(item.getFirstName() == null)
					System.out.println("first name is null"); %>
				<td><%=item.getFirstName()%></td>
				
				<% System.out.println(item.getFirstName()); %>
				<% if(item.getLastName() == null)
					System.out.println("last name is null"); %>
				<td><%=item.getLastName()%></td>
				
				<% System.out.println(item.getLastName()); %>
				<% if(item.getUserName() == null)
					System.out.println("username is null"); %>
				<td><%=item.getUserName()%></td>
				
				<% System.out.println(item.getUserName()); %>
				<% if(item.getMail() == null)
					System.out.println("mail is null"); %>
				<td><%=item.getMail()%></td>
				
				<% System.out.println(item.getPassword()); %>
				<% if(item.getPassword() == null)
					System.out.println("password is null"); %>
				<td><%=item.getPassword()%></td>
				
			</tr>
			<% 
			}
			%>
		</table>
		<% 
		}
		
		else {
		%>
		
		<table>
			<tr>
				<th>מקצוע</th>
				<th>שם העסק</th>
				<th>שם פרטי</th>
				<th>דוא"ל</th>
				<th>טלפון</th>
				<th>כתובת</th>
				<th>עיר</th>
				<th>אתר</th>
				<th>שם משתמש</th>
				<th>סיסמה</th>
			</tr>
			<%
			
			for (UserProfessionnal item : proList) {
			%>
			<tr>

				<% System.out.println(item.getProfession()); %>
				<% if(item.getProfession() == null)
					System.out.println("profession is null"); %>
				<td><%=item.getProfession()%></td>

				<% System.out.println(item.getBusinessName()); %>
				<% if(item.getBusinessName() == null)
					System.out.println("business name is null"); %>
				<td><%=item.getBusinessName()%></td>
				
				<% System.out.println(item.getFirstName()); %>
				<% if(item.getFirstName() == null)
					System.out.println("firstname is null"); %>
				<td><%=item.getFirstName()%></td>		

				<% System.out.println(item.getMail()); %>
				<% if(item.getMail() == null)
					System.out.println("mail is null"); %>
				<td><%=item.getMail()%></td>
				
				<% System.out.println(item.getPhone()); %>
				<% if(item.getPhone() == null)
					System.out.println("phone is null"); %>
				<td><%=item.getPhone()%></td>				

				<% System.out.println(item.getAddress()); %>
				<% if(item.getAddress() == null)
					System.out.println("address is null"); %>
				<td><%=item.getAddress()%></td>
				
				<% System.out.println(item.getCity()); %>
				<% if(item.getCity() == null)
					System.out.println("city is null"); %>
				<td><%=item.getCity()%></td>
				
				<% System.out.println(item.getWebsite()); %>
				<% if(item.getWebsite() == null)
					System.out.println("website is null"); %>
				<td><%=item.getWebsite()%></td>
				
				<% System.out.println(item.getUserName()); %>
				<% if(item.getUserName() == null)
					System.out.println("username is null"); %>
				<td><%=item.getUserName()%></td>
				
				<% System.out.println(item.getPassword()); %>
				<% if(item.getPassword() == null)
					System.out.println("password is null"); %>
				<td><%=item.getPassword()%></td>
				
			</tr>
			<% 
			}	
			%>
		</table>
		<% 
		}	
		%>	

		<p style="padding-top: 15px" class="form_settings"  align="center">
			<a href="accountSetForm"><input class="submit" type="submit" name="name"
						value="Settings"/></a>
		</p>
		
		<br> <br> <br>
	</div>
</div>

<%@ include file="footer.jsp"%>


