<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 


<!-- 

 
 ---------------------page new booking----------------------------


		verify you are signed in
		if not, will be redirected to the log in page
		 -->
		<%		
			if(session.getAttribute("login")==null || session.getAttribute("login")==" ")
			{
				response.sendRedirect("/proviso/?action=showLoginPage");
			}
		%>
		
 <!DOCTYPE html>

<html>
	<head>
	<meta charset="UTF-8">
	<title>Proviso</title>
	</head>
	
	<link rel="stylesheet" href="../css/site.css">
			
	
	<body>
    	
			
			<!-- 2: Create Form to accept new reservation -->
    		<h2 style="float:right;font-size:1em;">Welcome  -- <% /*session.getAttribute("login")*/ %><a href="/proviso/?action=logoutUser">Logout?</a></h2>
		
		<!-- Tie in the topNav file and where I want it. -->
		<jsp:include page="../header.jsp" flush="true" />	
		
    
    
        
    <!-- 2: Create Form to accept new reservation -->
    	<h1 >New Reservation Booking</h1><br><br>
    	<h2> <% /*session.getAttribute("login")*/ %></h2>
    	
    	<div class="center-form width-35">
	
		<form method="post" action="completereservation.jsp">
			<input type="hidden" name="action" value="confirmReservation" />
			
			<h3>Reservation Dates:</h3>			
	        <!-- Check in and out dates -->
	        <label for="checkIn">Check in:</label>
			<input type="date" id="checkIn" name="checkIn">
			
			<label for="checkOut">Check out:</label>
			<input type="date" id="checkOut" name="checkOut"><br><br>
	        
	        <!-- Room Size -->
	        <h3>Room Size:</h3>
	        <label for="roomSize">Beds:</label>
	        	<select name="roomSize" id="roomSize">
				  <option value="doubleFull">Double Full Beds</option>
				  <option value="queen">Queen Bed</option>
				  <option value="doubleQueen">Double Queen Beds</option>
				  <option value="king">King</option>
				</select><br><br>
	        
	         <!-- Amenities -->
	        <h3>Amenities: </h3>
	      	<input type="checkbox" id="wifi" name="wifi" value="true">
	      	<label for="wifi">Wifi ($12.99 flat fee)</label><br><br>
			
			<input type="checkbox" id="breakfast" name="breakfast" value="true">
			<label for="breakfast">Breakfast ($8.99/night)</label><br><br>
			
			<input type="checkbox" id="parking" name="parking" value="true">
			<label for="parking">Parking ($19.99/night)</label><br>
			
	        
	         <!-- Guests -->
	         <h3>Guests</h3>
	           <input type="radio" id="guests1-2" name="guests" value="1-2">
	        <label for="guests1-2">1-2</label><br><br>
	     
			<input type="radio" id="guests3-5" name="guests" value="3-5">
			<label for="guests3-5">3-5</label>			<br><br>
			
			
	        <!-- Loyalty Points -->
	        <h3>Loyalty Points: </h3>
	      	<input checked type="checkbox" id="loyalty_points_reservation" name="loyalty_points_reservation" value="true">
	      	<label for="loyalty_points_reservation">Yes, I desire my 150 Loyalty Points</label>
			<br><br>
	
	        <!-- Submit Button -->
	        <input type="submit" value="Submit">
	        <br><br>
        </form>
        </div>
      
    
    	<!-- Page footer	 -->
		<jsp:include page="../footer.jsp" flush="true" />	
		 
	
	</body>
</html>