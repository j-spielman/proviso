<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dbBeans.Customer"%>
 

 
  <!DOCTYPE html>

<html>
	<head>
	<meta charset="UTF-8">
	<title>Proviso Confirm Reservation</title>
	</head>
	
	<link
		rel="stylesheet" href="../css/site.css">
			
	
	<body>
		
		
		
		<!-- 2: Create Form to accept new reservation -->
   		<h2 style="float:right;font-size:1em;">Welcome -- <% /*session.getAttribute("login")*/ %><a href="/proviso/store/?action=logoutUser">Logout?</a></h2>
		
			
		<!-- Tie in the topNav file and where I want it. -->
		<jsp:include page="../header.jsp" flush="true" />	
	
    

    
    <%
    String checkIn = request.getParameter("checkIn");
    String checkOut = request.getParameter("checkOut");
    String roomSize = request.getParameter("roomSize");
	
	String guests = request.getParameter("guests");
	Boolean loyalty_points_reservation = Boolean.parseBoolean(request.getParameter("loyalty_points_reservation").trim());
	String customer_id = request.getParameter("customer");
	
	// add 150 points.
	int pointsToAdd = 0;
	if(loyalty_points_reservation) {
		pointsToAdd = 150;
		System.out.println("Setting points to 150");
	}
	System.out.println("Loyalty Points parameter: <"+loyalty_points_reservation+">");

	String wifi = request.getParameter("wifi");
	String breakfast = request.getParameter("breakfast");
	String parking = request.getParameter("parking");
	String amenities = "";
	if (wifi != null) {
		amenities += "wifi: yes</br>";
	}
	if (breakfast != null) {
		amenities += "breakfast: yes</br>";
	}
	if (parking != null) {
		amenities += "parking: yes</br>";
	}
			
	dbBeans.Reservation newReservation = new dbBeans.Reservation(); 
	
	newReservation.setCheckIn(checkIn);
	newReservation.setCheckOut(checkOut);
	newReservation.setRoomSize(roomSize);
	newReservation.setAmenities(amenities);
	newReservation.setGuests(guests);
	newReservation.setloyalty_points_reservation(pointsToAdd);
	newReservation.setCustomer_id(customer_id);
	

	dbBeans.JdbcReservationDao reservationDao = new dbBeans.JdbcReservationDao(); 
	long reservation_id = reservationDao.addReturnId(newReservation);

	System.out.println(newReservation.toString());
	System.out.println(String.format("Reservation{checkIn=%s, checkOut=%s, roomSize=%s, amenities=%s, guests=%s, loyalty_points_reservation=%s, customer_id=%s}", checkIn, checkOut, roomSize, amenities, guests, loyalty_points_reservation, customer_id));

	
	if (reservation_id > 0){
		
		String user = (String) session.getAttribute("login");
		System.out.println("Adding loyalty points to customer " + user + " number: " + pointsToAdd);
		if(user!= "") {
			dbBeans.JdbcCustomerDao customerDao = new dbBeans.JdbcCustomerDao(); 
			//get Customer to be passeed to addloyalty
			Customer current = customerDao.findByUser(user);
			customerDao.addloyalty_points_customer(current,pointsToAdd);
		}
	}
	
    %>


        
    <!-- 2: Output Summary of Form to confirm new reservation number -->
    	<h1>RESERVATION CONFIRMED</h1>
    	
    	<div class="center-form width-35">
			Your new reservation confirmation number is: 
		<%= reservation_id %>
        </div><br><br><br>
        
        <div class="center-form width-35">
        	<a href="/proviso/store/?action=showloyalty_points_reservation">Click Here</a> if you'd like to view your current loyalty points.
        </div>
        
   		<br><br><br>
       
       

    	<!-- Page footer	 -->
		 <jsp:include page="../footer.jsp" flush="true" />
	
		 
	
	</body>
</html>