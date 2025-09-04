<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		
	</style>
</head>
<body>
	<!-- ex13_session.jsp -->
	<%
	
		int n = 10;
		session.setAttribute("a", 10);
		application.setAttribute("b", 20);
	
	%>
	<h1>session & application</h1>
	
	<div>n: <%= n %></div>
	<div>a: <%= session.getAttribute("a") %></div>
	<div>b: <%= application.getAttribute("b") %></div>
	
	<%
		//pageContext.forward("ex13_session_2.jsp");
	%>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





