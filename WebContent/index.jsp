<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome | Proviso</title>
	<!-- Bootstrap link  -->
	<jsp:include page="style.jsp" flush="true" />
	
	<!--Date Picker  -->
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	
	

	<div class="container-fluid" id="index-bg">
				
	</div>
	
	<div class="container-md" id="search-box">
		<img src="./img/logo_transparent.png" alt="hotel logo">
	
		<div class="row g-2" id="row-1">
	  		<div class="col-md">
			    <div class="form-floating">
			      <select class="form-select" id="destanation" aria-label="destination selection">
			        <option class="text-muted" selected disabled>Select Destination</option>
			        <option value="London">London, UK</option>
			        <option value="Hawaii">Honolulu, HI</option>
			        <option value="Austrilia">Sydney, AU</option>
			      </select>
			      <label for="destination">Destination</label>
			    </div>
		  	</div>
		  	<div class="col-md">
			    <div class="form-floating">
			      <input type="text" class="form-control" id="stay-dates" placeholder="MM/DD/YYYY" value="MM/DD/YYYY">
			      <label for="stay-dates">Stay Dates</label>
			   </div>
		   </div>
		  </div>
		  <div class="row g-2" id="row-2">
			<div class="col-md">
			    <div class="form-floating">
			      <select class="form-select" id="guests" aria-label="guest selection">
			        <option class="text-muted" selected disabled>Select Number of Guest</option>
			        <option value="1">1</option>
			        <option value="2">2</option>
			        <option value="3">3</option>
			        <option value="4">4</option>
			        <option value="5">5</option>
			      </select>
			      <label for="guests">Number of Guests</label>
			    </div>
		   	</div>
		   <div class="col-md">
			    <div class="form-floating">
			     <select class="form-select" id="room-type" aria-label="Floating label select example">
			        <option class="text-muted "selected disabled>Select Room Type</option>
			        <option value="Double Full">Double Full</option>
			        <option value="Queen">Queen</option>
			        <option value="Double Queen">Double Queen</option>
			         <option value="King">King</option>
			      </select>
			      <label for="destination">Room Type</label>
			    </div>
		   </div>
		</div>	
		
		<div class="d-grid gap-2">
  			
  				<button class="btn" id="search-btn" type="button">Search</button>
  			
  		</div>
	</div>
	
	<div class="container-md" id="card-div">
		  	  <h3>Featured Hotels</h3>
		  	  <div class="row">
			  	  <div class="ldn-card col">
					  <img class="card-img-top" src="./img/london.jpg" alt="Card image cap">
					  <div class="card-body">
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			  	  	  </div>
				   </div>
				   
				   <div class="sdy-card col">
					  <img class="card-img-top" src="./img/sydney.jpg" alt="Card image cap">
					  <div class="card-body">
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			  	  	  </div>
				   </div>
				   
				   <div class="hi-card col">
					  <img class="card-img-top" src="./img/hawaii.jpg" alt="Card image cap">
					  <div class="card-body">
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			  	  	  </div>
				   </div>
			</div>
  		</div>
		
		

	<jsp:include page="footer.jsp" flush="true" />
	<!-- JavScript script for bootstrap to function  -->
	<jsp:include page="script.jsp" flush="true" />
	
	
</body>


</html>