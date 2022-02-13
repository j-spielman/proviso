<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% 
	int year = Calendar.getInstance().get(Calendar.YEAR);
	
%>

<footer class="text-muted py-5">
	<div class="container">
		<hr>
		<p>
			&copy; <%=year%> <span>Proviso International , Inc</span>
		</p>
	</div>
</footer>