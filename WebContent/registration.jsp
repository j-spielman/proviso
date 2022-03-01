<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
	<meta charset="ISO-8859-1">
	<jsp:include page="style.jsp" flush="true" />
	<jsp:include page="header.jsp" flush="true" />	

</head>
<body>
<div class="container">
<form method="post" action="registrationConfirmation.jsp">
	<div class="form-group">
		<label for="fName">First Name</label>
		<input type="text" class="form-control" name="fName" maxlength="55">
		<label for="lName">Last Name</label>
		<input type="text" class="form-control" name="lName" maxlength="65">
		<label for="email">Email</label>
		<input type="email" class="form-control" name="email">
		<label for="password">Password</label>
		<input type="text" class="form-control" name="password">
		<br />
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>	
	</div>		
</body>
</html>