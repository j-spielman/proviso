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
Customer input = new Customer(9999,"Test","Last","testUser","testPass",14);
try{	
	db.add(input);
}catch(Exception e_){
	System.out.println("Add failed");
}

input.setFirst_name("Franklin");

db.update(input);

db.remove(9999);
%>

</body>
</html>