<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//방문 횟수
	if (session.getAttribute("count") == null) {
		session.setAttribute("count", 1);
	} else {
		session.setAttribute("count", (int)session.getAttribute("count") + 1);
	}

	//방문 횟수
	if (application.getAttribute("count") == null) {
		application.setAttribute("count", 1);
	} else {
		application.setAttribute("count", (int)application.getAttribute("count") + 1);
	}

%>    
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
	<!-- ex13_session_3.jsp -->
	<h1>세번째 페이지</h1>
	
	<div>a: <%= session.getAttribute("a") %></div>
	<div>b: <%= application.getAttribute("b") %></div>
	
	<hr>
	
	<div>count: <%= session.getAttribute("count") %></div>
	<div>count: <%= application.getAttribute("count") %></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





