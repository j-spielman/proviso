<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<% 
/*  */session.invalidate();
%> 
<jsp:include page="style.jsp" flush="true" />
<meta charset="ISO-8859-1">
<title>Log Out</title>
</head>

<jsp:include page="header.jsp" flush="true" />

<body>
You are now logged out. Thank you!

<jsp:include page="footer.jsp" flush="true" />
	<!-- JavScript script for bootstrap to function  -->
<jsp:include page="script.jsp" flush="true" />
	
</body>
</html>