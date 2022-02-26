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
		
You can review or cancel your reservation here. If you need additional assistance please call xxx-xxx-xxxx.
		<form method="post" action="./reservationSummary.jsp">
           <label for="fname">First name:</label>
           <input type="text" id="fname" name="fname">
           <label for="lname">Last name:</label>
           <input type="text" id="lname" name="lname">
           <label for="cnum">Confirmation Number:</label>
           <input type="text" id="cnum" name="reservationId">
           <br>
           <input type="submit" value="Submit">
       </form>
       
       
	</div>
	
	
		
		

	<jsp:include page="footer.jsp" flush="true" />
	<!-- JavScript script for bootstrap to function  -->
	<jsp:include page="script.jsp" flush="true" />
	
	
</body>


</html>