<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbBeans.JdbcManager"%>
    <%@page import="dbBeans.JdbcCustomerDao"%>
    <%@page import="dbBeans.Customer"%>
    <%@page import="dbBeans.Reservation"%>
    <%@page import="dbBeans.JdbcReservationDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test</title>
</head>
<body>
<%
	//JdbcCustomerDao db = new JdbcCustomerDao();
	long test = 1;
	JdbcReservationDao db = new JdbcReservationDao();
	//Customer test = new Customer(99,"test","test","test@test","pass",9999);
	long id = 9999;
	String checkIn = "March 1st";
	String checkout = "March 3rd";
	String room = "double";
	String custId = "2";
	String amenities = "none";
	String guests = "3";
	int loyalty = 5;
	
	Reservation resTest = new Reservation(id,checkIn,checkout,room,custId,amenities,guests,loyalty);
	
	System.out.println(resTest.toString());
	
	
	
	

%>

</body>
</html>