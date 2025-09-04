<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.test.jsp.MyUtil"%>    
<%

	//이 영역은 어떤 메서드의 구현부

	//지역 변수? 멤버 변수? > 지역 변수
	int a = 10;
	
	/* 
	public void test() {
		
	} 
	*/
	
	/* 
	class Test {
		
	} 
	*/
	
%>    
<%!

	//*** 선언부에서 만든 기능 > 현재 JSP안에서만 사용 가능 > 다른 JSP에서는 사용 불가능

	//이 영역은 어떤 클래스의 구현부
	public int b = 20;

	public void test() {
		System.out.println("test");
	}
	
	//test();
	
	public int sum(int a, int b) {
		
		return a + b;
	}
	
%>
<%
	test();
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
	<!-- ex06_declare.jsp -->
	
	<div>10 + 20 = <%= sum(10, 20) %></div>
	<div>30 + 40 = <%= sum(30, 40) %></div>
	
	<%
		MyUtil util = new MyUtil();
	%>
	<div>50 + 60 = <%= util.sum(30, 40) %></div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





