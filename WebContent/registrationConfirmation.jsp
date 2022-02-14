<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
	<meta charset="ISO-8859-1">
	<jsp:include page="style.jsp" flush="true" />	
	<jsp:include page="header.jsp" flush="true" />
	<%@page import="java.util.Random"%>
	<%@page import="dbBeans.JdbcCustomerDao"%>
	<%@page import="dbBeans.Customer"%>
	<%
	String message = "";
	JdbcCustomerDao db = new JdbcCustomerDao();
	Random num = new Random();
	int newID = num.nextInt(10000);
	int loyalty = 0;
	
	//add empty checks
	try{
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		out.print(fName+" "+lName+" "+email+" "+password);
		Customer customerIn = new Customer(newID,fName,lName,email,password,loyalty);
		db.add(customerIn);
		message = "Registration Complete! Please login to continue";	
	}catch(Exception e){
		message = "Registartion failed! Please double check your information and try again";
	}
%>
</head>
<body>
<div class="container">
	<%		
		
			out.print(message);
			out.print("<br /> <button onclick=window.location.href='registration.jsp';> Register</button>");					
			out.print("&nbsp; <button onclick=window.location.href='registration.jsp';> Login</button>");
	%>
	</div>		
</body>
</html>