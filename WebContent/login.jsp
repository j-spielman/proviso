<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="style.jsp" flush="true" />
<title>Proviso | Login</title>
</head>

<jsp:include page="header.jsp" flush="true" />

<body>
	<div class="loginbox">
		<form action="/index.jsp" method="post">
			<label for="username">Username:</label><br> <input type="text"
				id="username" name="username"><br> <label for="pwd">Password:</label><br>
			<input type="password" id="pwd" name="pwd">
			<p>
				<input type="submit" value="Submit">
		</form>
	</div>
	
	Would you like to join?<a href="/registration.jsp">Click here</a>

	<jsp:include page="footer.jsp" flush="true" />
	<!-- JavScript script for bootstrap to function  -->
	<jsp:include page="script.jsp" flush="true" />
	
</body>

</html>