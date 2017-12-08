<%@ include file = "header.jsp" %>
<%@page import="java.util.*"%>
<%@page import="tp.data.*"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%
		Library library = Library.getInstance();
		Book book = library.getById(Integer.parseInt(request.getParameter("id")));
	%>
	<h1>Titre : <%=book.getTitle() %></h1>
	<h2>Pages : <%=book.getNbPages() %></h2>
	<h2>Mots-clés : <%=book.getKeywords() %></h2>
<%@ include file = "footer.jsp" %>
