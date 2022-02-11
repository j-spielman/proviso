<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="site.css">
<meta charset="ISO-8859-1">
<title>Proviso Login</title>
</head>
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
</body>
</html>