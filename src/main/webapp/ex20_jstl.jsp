<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

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
	<!-- ex20_jstl.jsp -->
	<h1>JSTL</h1>
	
	<!--  
		JSTL
		- 프로그래밍 기능을 가진 태그
		- 변수
		- 조건문
		- 반복문
		- 기타 처리 등..
		
		JSTL 설치
		1. jstl.jar 가져오기
		2. taglib 선언하기
		
	-->
	<h2>변수 선언</h2>
	<%
		int a = 10; //지역 변수
		pageContext.setAttribute("b", 20); //pageContext 변수 b
		request.setAttribute("c", 30); //request 변수 c
	%>
	<!--  
	
		<네임스페이스:태그명></네임스페이스:태그명>
	
	-->
	<c:set var="d" value="40" /><!-- JSTL 변수 == pageContext 변수 -->
	
	<%-- <div>d: <%= d %></div> --%>
	
	<div>d: ${d}</div>
	<div>d: ${pageScope.d}</div>
	<div>d: ${requestScope.d}</div>
	<div>d: ${sessionScope.d}</div>
	<div>d: ${applicationScope.d}</div>
	
	<h2>변수 수정하기</h2>
	<c:set var="d" value="50" />
	<div>d: ${d}</div>
	
	<h2>변수 삭제하기</h2>
	<c:remove var="d" />
	<div>d: ${d}</div>
	<div>d: ${d == null}</div>
	<div>d: ${empty d}</div>
	
	
	
	<h2>조건문</h2>
	<c:set var="num" value="0" />
	
	<c:if test="${num > 0}">
		<div>${num}은(는) 양수입니다.</div>
	</c:if>
	
	<c:if test="${num <= 0}">
		<div>${num}은(는) 양수가 아닙니다.</div>
	</c:if>	
	
	<%-- 
	<% if (num > 0) { %>
		<div>양수입니다.</div>
	<% } %> 
	--%>
	
	<h2>조건문(다중 if문)</h2>
	<div>
	<c:choose>
		<c:when test="${num > 0}">양수</c:when>
		<c:when test="${num < 0}">음수</c:when>
		<c:otherwise>영</c:otherwise>
	</c:choose>
	</div>
	
	<h2>반복문(일반 for문 or 향상된 for문)</h2>
	
	<% for (int i=1; i<=10; i++) { %>
		<div>숫자: <%= i %></div>
	<% } %>
	
	<c:forEach var="i" begin="1" end="10" step="1">
		<div>숫자: ${i}</div>
	</c:forEach>
	
	<hr>
	
	<%
		String[] names = { "홍길동", "아무개", "고양이", "강아지", "거북이" };
	
		//배열 > <c:forEach> > 내장 객체
		pageContext.setAttribute("names", names);
	%>
	
	<!-- for (String name : names) {} -->
	<c:forEach var="name" items="${names}">
		<div>${name}</div>
	</c:forEach>
	
	<hr>
	
	<table>
		<tr>
			<th>이름</th>
			<th>인덱스</th>
			<th>카운트</th>
			<th>current</th>
			<th>first</th>
			<th>last</th>
		</tr>
		<c:forEach items="${names}" var="name" varStatus="status">
		<tr>
			<td>${name}</td>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${status.current}</td>
			<td>${status.first}</td>
			<td>${status.last}</td>
		</tr>
		</c:forEach>
	</table>
	
	<hr>
	
	<!-- 서울 인천 부산 -->
	<c:forTokens items="서울,인천,대구,부산,광주,제주,독도" delims="," var="city">
		<div>${city}</div>
	</c:forTokens>
	
	
	
	<h2>출력문</h2>
	<div>안녕하세요. <b>홍길동</b>입니다.</div>
	
	<c:set var="txt" value="안녕하세요. <b>홍길동</b>입니다." />
	<div>${txt}</div>
	<div>${txt.replace("<", "&lt;").replace(">", "&gt;")}</div>
	
	<div><c:out value="${txt}" /></div>
	<div><c:out value="${txt}" escapeXml="true" /></div>
	<div><c:out value="${txt}" escapeXml="false" /></div>
	
	
	<h2>링크 만들기</h2>
	
	<div><a href="ex20.jsp?name=hong&age=20&gender=m">페이지 이동하기</a></div>
	
	<c:url var="url1" value="ex20.jsp">
		<c:param name="name" value="hong"></c:param>
		<c:param name="age" value="20"></c:param>
		<c:param name="gender" value="m"></c:param>
	</c:url>
	<div><a href="${url1}">페이지 이동하기</a></div>
	
	
	<h2>이동하기</h2>
	<%-- 
	<% response.sendRedirect("ex19_el.jsp"); %>
	<c:redirect url="ex19_el.jsp"></c:redirect>
	--%>
	
	<h2>형식 문자열</h2>
	<c:set var="price" value="1234567" />
	<div>가격: ${price}원</div>
	<div>가격: <fmt:formatNumber value="${price}" />원</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





