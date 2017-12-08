<%@ include file = "header.jsp" %>
<%@page import="java.util.*"%>
<%@page import="tp.data.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%
		Library library = Library.getInstance();
		List<Book> list = library.getAll();
	%>
	<table>
		<tr>
			<th>Id</th>
		</tr>
		
		<%for(Book book : list){%>
		<tr>
			<td><a href="bookdetail.jsp?id=<%=book.getId()%>"><%=book.getId()%></a></td>
		</tr>
	<%} %>
	</table>
<%@ include file = "footer.jsp" %>
