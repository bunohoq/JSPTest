<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//- pageContext.forward("URL")
	//- pageContext.include("URL")

	//자바스크립트 생성 > location.href = 'ex11_pagecontext_two.jsp';
	//response.sendRedirect("ex11_pagecontext_two.jsp");

	//pageContext.forward("ex11_pagecontext_two.jsp");
	
	//System.out.println("one");
	
	
	//********** 웹은 상태 유지가 안된다.
	
	//지역 변수
	int num = 100;
	int num2 = 200;
	
	//1. <form> <input type="hidden" name="num" value="<%= num % >">
	//2. location.href= 'two?num=<%= num % >'
	
	request.setAttribute("num", num);
	pageContext.setAttribute("num2", num2);
	
	pageContext.forward("ex11_pagecontext_two.jsp");
	//response.sendRedirect("ex11_pagecontext_two.jsp");
	
	
	//서버측 페이지 이동 + 데이터 전달!!
	//1. request 객체에 데이터를 담기
	//2. pageContext.forward()로 이동하기
	

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
	<!-- ex11_pagecontext_one.jsp -->
	<h1>첫번째 페이지</h1>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





