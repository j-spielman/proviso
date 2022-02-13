<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
Muhammad Tariq
CSD - 460 Capstone
Poviso
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout Page</title>
</head>
<body>
	<%
		session.invalidate();
		response.sendRedirect("index.jsp");
	%>
</body>
</html>