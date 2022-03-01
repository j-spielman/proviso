<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>

<html>
	<head>
	<meta charset="UTF-8">
	<title>Proviso</title>
	</head>
	
	<link rel="stylesheet" href="/proviso/css/site.css">
			
	
	<body>
	
	<div class="logo">
			<img src="../images/logo.jpeg" alt="Proviso Logo" width="200" height="148" style="float:center;clear:both;overflow:auto;">
		</div>
		
		<!-- 2: Create Form to accept new reservation -->
   		<h2 style="float:right;font-size:1em;">Welcome -- <% session.getAttribute("login"); %><a href="/proviso/store/?action=logoutUser">Logout?</a></h2>
		
	<!-- checks to see if the user is signed in before 
		 if not redirected to the login page. -->
		 
		 <%
			if(session.getAttribute("login")==null || session.getAttribute("login")==" ")
			{
				response.sendRedirect("/proviso/store/?action=showLoginPage");
			}
		%>
		
		<jsp:include page="header.jsp" flush="true" />	
		
		<%@ page import="java.sql.*" %>
		
		<main>
				<h1>Loyalty Points</h1>
				<%
			    	try
			    	{
			    		Class.forName("com.mysql.jdbc.Driver");
			    		
			    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proviso?useSSL=false","proviso_user","MySQL5IsGreat!");
			    		
			    		if(request.getParameter("login")!=null)
			    		{
			    			String first_name, username, loyalty_points;
			    			
			    			username=request.getParameter("login");
			    			
			    			PreparedStatement pstmt=null;
			    			
			    			pstmt=con.prepareStatement("SELECT first_name, loyaltyPoints FROM customer WHERE user_name='username';");
			    			
			    			ResultSet rs = pstmt.executeQuery();
			    			
			    			while(rs.next()) {
			    				System.out.println();  
			    			
			    			}
			    		
			    			con.close();
			    		}
			    	}
			    	catch (Exception e)
			    	{
			    		out.println(e);
			    	}
			    %>

		
		</main>
		
		<!-- Page footer	 -->
	  	<jsp:include page="footer.jsp" flush="true" />
	
		 
	
	</body>
</html>
	
