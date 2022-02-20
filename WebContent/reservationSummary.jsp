<!-- 
	private long reservation_id; 
	private String checkIn;
	private String checkOut;
	private String roomSize; 
	private String customer_id; 
	private String amenities; 
	private String guests; 
	private int loyalty_points_reservation;
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbBeans.Reservation"%>        
<%
//using temp reservation until database table/class match
	Reservation temp = new Reservation(9999,"03/30/2022","04/02/2022","Queen","2","Mini-Bar","2",150);
	String tempName = "Joseph Spielman";	
%>
<!DOCTYPE html>
<html>
<head>
<title>Reservation Summary</title>
	<meta charset="ISO-8859-1">
	<jsp:include page="style.jsp" flush="true" />
	<jsp:include page="header.jsp" flush="true" />	
	<link rel="stylesheet" href="./css/site.css">

</head>
<body>
<div class="container-md">
<div class="card" id="summary-card">
<h3 id="summary-title">Summary for Reservation Number: # <%out.print(temp.getReservation_id()); %></h3>
    <ul class="list-group list-group-flush" style="width: 100%;">        
        <li class="list-group-item" id="summary-customer">Customer: <%out.print(tempName); %></li>
        <li class="list-group-item" id="summary-line">Check-In: <%out.print(temp.getCheckIn()); %></li>
        <li class="list-group-item" id="summary-line">Check-Out: <%out.print(temp.getCheckOut()); %></li>
        <li class="list-group-item" id="summary-line">Room Type: <%out.print(temp.getRoomSize()); %> &nbsp;&nbsp;|&nbsp;Guests: <%out.print(temp.getGuests()); %></li>
        <li class="list-group-item" id="summary-line">Amenities: <%out.print(temp.getAmenities()); %></li>
        <li class="list-group-item" id="summary-line">Loyalty Points Earned: <%out.print(temp.getloyalty_points_reservation()); %></li>
    </ul>
    </div>
</div>
</body>
</html>