<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="./login">
		<br />Login: <input type="text" name="login"> <br />Password:
		<input type="password" name="password"> <input type="submit"
			value="Submit"/>
	</form>
	<% if(session.getAttribute("ERROR") != null){ %>
		<div style="color: red; font-weight: bold;"><%=session.getAttribute("ERROR") %></div>
		<%session.removeAttribute("ERROR"); }%>
		
</body>
</html>