<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="dbBeans.JdbcCustomerDao, dbBeans.Customer" %>
<!DOCTYPE html>
<html>
<head>
<%
if (request.getMethod().equalsIgnoreCase("post")){
	JdbcCustomerDao dao = new JdbcCustomerDao();
	Customer c = dao.findByUser(request.getParameter("username"));
	if (c == null){
		response.sendRedirect("loginFailure.jsp");
	}
	else{
		if (c.getPassword().equals(request.getParameter("pwd"))){
			session.setAttribute("login",c);
			response.sendRedirect("index.jsp");
		}
		else {
			response.sendRedirect("loginFailure.jsp");
		}
	}
}
%>
<link rel="stylesheet" type="text/css" href="site.css">
<meta charset="ISO-8859-1">
<title>Proviso Login</title>
</head>
<body>

	<div class="loginbox">
		<form action="/login.jsp" method="post">
			<label for="username">Username:</label><br> <input type="text"
				id="username" name="username"><br> <label for="pwd">Password:</label><br>
			<input type="password" id="pwd" name="pwd">
			<p>
				<input type="submit" value="Submit">
		</form>
	</div>
	
	<p>Would you like to join?<a href="/registration.jsp">Click here</a></p>
</body>
</html>