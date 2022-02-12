<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbBeans.JdbcManager"%>
    <%@page import="dbBeans.JdbcCustomerDao"%>
    <%@page import="dbBeans.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test</title>
</head>
<body>
<%
	JdbcCustomerDao db = new JdbcCustomerDao();
	
	Customer test = db.findByUser("joeyspielman@gmail.com");
		
	out.print(test.toString());
	
	
%>

</body>
</html>