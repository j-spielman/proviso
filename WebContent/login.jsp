<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!-- 
Muhammad Tariq
CSD - 460 Capstone
Poviso
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

		<!-- This checks to see if the user is already logged in and directs them back to the main page if already logged in. -->
		<%
			if (session.getAttribute("login")!=null)
			{
				response.sendRedirect("index.jsp");
			}
		
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				/* Credentials below need updated. */

				//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root", "");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proviso?","proviso_user","MySQL5IsGreat!");
				
				
				if (request.getParameter("login_button")!=null)
				{
					String dbuser_name, dbpassword;
					
					String user_name, password;
					
					user_name=request.getParameter("user_name");
					password=request.getParameter("password");
					
					PreparedStatement pstmt=null;
					
					pstmt=con.prepareStatement("SELECT * FROM customer WHERE user_name=? AND password=?");
					pstmt.setString(1,user_name);
					pstmt.setString(2,password);
					
					ResultSet rs=pstmt.executeQuery();
					
					if(rs.next())
					{
						dbuser_name=rs.getString("user_name");
						dbpassword=rs.getString("password");
						
						if(user_name.equals(dbuser_name) && password.equals(dbpassword))
						{
							/* This sets the session name and stores the username (Email address) associated with the session */
							session.setAttribute("login",dbuser_name);

							response.sendRedirect("index.jsp");

						}
					}
					else
					{
						request.setAttribute("errorMsg", "<p style='color:red;'>Invalid username (email) or password</p>");
					}
					con.close();
				}
			}
			catch (Exception e)
			{
				out.println(e);	
			}
		
		%>

<title>Login</title>
<jsp:include page="style.jsp" flush="true" />
</head>
<body>

	<!-- header File -->
	<jsp:include page="header.jsp" flush="true" />

	<main>
		<!-- Displays an error message for issues with email or password. -->
		<%
			if(request.getAttribute("errorMsg")!=null)
			{
				out.println(request.getAttribute("errorMsg"));
			}
		%>

		<form method ="post" name="loginform" onsubmit="return validate();">
            <label for="user_name">Enter Email/Username: </label>
            	<input type="text" name="user_name"><br>
            <label for="password">Enter Password: </label>
            	<input type="password" name="password"><br>
            <p>
            	<input type ="submit" name="login_button" value="Login"> 
            </p><br>
            <p>
            	<a href="registration.jsp">Don't have an account? Click here to sign up</a><br>
            </p>
        </form>

	<!-- The JavaScript below checks to see if the login fields are empty or not before continuing. -->
		<script>
			function validate()
			{
				var user_name = document.loginform.user_name;
				var password = document.loginform.password;
				
				if (user_name.value == null || user_name.value == "")
				{
					window.alert("Email field empty");
					user_name.focus();
					return false;
				}
				if (password.value == null || password.value == "")
				{
					window.alert("Password field empty");
					password.style.background = "red";
					password.focus();
					return false;
				}
			}
		</script>


	</main>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<hr>
	<!-- Page Footer File -->
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html> 