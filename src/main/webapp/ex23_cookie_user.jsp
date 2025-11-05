<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	<!-- ex23_cookie_user.jsp -->
	<h1>일반 페이지</h1>
	
	<c:if test="${not result}">
	<div>익명 유저</div>
	</c:if>
	
	<c:if test="${result}">
	<div>로그인 유저</div>
	</c:if>
	
	<hr>
	
	<div><a href="ex23_cookie.jsp">로그인 페이지</a></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





