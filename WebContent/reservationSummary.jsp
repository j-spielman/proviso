
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbBeans.Reservation"%>
    <%@page import="dbBeans.JdbcReservationDao"%>         
<%
//using temp reservation until database table/class match
	Reservation temp = null;
	JdbcReservationDao resDB = new JdbcReservationDao();
	String tempName = "Joseph Spielman";
	String message ="";
	String resId = "0";	
	int flag = 0;	
	if(request.getParameter("reservationId")!= ""){
		try{
			resId = request.getParameter("reservationId");
			Long key = Long.parseLong(resId);
			temp =resDB.find(key);					
		}catch(Exception e){
			message= "Reservation Not found!";
			flag = 1;
		}
	}else{
		message ="Invalid Reservation Id";
		flag = 1;
	}
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
<%if(flag == 1){out.print("<span style='color:red'><h3>Invalid Reservation Id </h3></span><a href='reservationLookup.jsp'>Return to lookup</a>");} %>
<div class="card" id="summary-card">
<h3 id="summary-title">Summary for Reservation Number: # <%out.print(temp.getReservation_id()); %></h3>
    <ul class="list-group list-group-flush" style="width: 100%;">            	
    	<%
    	if(flag == 0){
	       out.print("<li class='list-group-item' id='summary-line'>Check-In: "+ temp.getCheckIn()+"</li>");     			    
	       out.print("<li class='list-group-item' id='summary-line'>Check-Out: "+temp.getCheckOut()+"</li>");
	       out.print("<li class='list-group-item' id='summary-line'>Room Type: "+temp.getRoomSize()+"&nbsp;&nbsp;|&nbsp;Guests: "+temp.getGuests()+"</li>");
	       out.print("<li class='list-group-item' id='summary-line'>Amenities: "+temp.getAmenities()+"</li>");
	       out.print("<li class='list-group-item' id='summary-line'>Loyalty Points Earned: "+temp.getloyalty_points_reservation()+"</li>");
	       }  
	       %>
	   </ul>
    </div>
</div>
</body>
</html>