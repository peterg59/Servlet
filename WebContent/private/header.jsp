<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="tp.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css" />
<title>Insert title here</title>
</head>
<body>
<%UserBean usr = (UserBean) request.getSession().getAttribute("USER"); %>
<p>L'utilisateur <%= usr.getLogin() %> est connecte depuis le <%= usr.getLoginDate() %></p>
<form action="./logout">
<input type="submit" value="Deconnexion"/>
</form>