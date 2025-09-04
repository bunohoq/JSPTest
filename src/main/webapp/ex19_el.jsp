<%@page import="com.test.jsp.Student"%>
<%@page import="java.util.HashMap"%>
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
	<!-- ex19_el.jsp -->
	<h1>EL</h1>
	
	<%
	
		//EL
		//- <%= % >와 같은 모든 값을 출력하는 역할이 아니다.
		//- 내장 객체의 컬렉션값을 출력하는 전용 출력문이다.
		//- pageContext, request, session, application
		
		//자바 변수
		int a = 10;
	
		//내장 객체
		pageContext.setAttribute("b", 20);
		request.setAttribute("c", 30);
		session.setAttribute("d", 40);
		application.setAttribute("e", 50);
		
		//EL의 키 > 우선순위
		//- ${b}
		//- pageContext > request > session > application
		
		
		//pageContext.setAttribute("b", 20);
		session.setAttribute("b", 60);
	%>
	
	<h2>표현식</h2>
	<div>a: <%= a %></div>
	<div>b: <%= pageContext.getAttribute("b") %></div>
	<div>c: <%= request.getAttribute("c") %></div>
	<div>d: <%= session.getAttribute("d") %></div>
	<div>e: <%= application.getAttribute("e") %></div>
	
	<h2>EL</h2>
	<div>a: ${a}</div>
	<div>b: ${pageContext.getAttribute("b")}</div>
	<div>b: ${b}</div>
	<div>c: ${c}</div>
	<div>d: ${d}</div>
	<div>e: ${e}</div>
	
	<div>b: ${pageScope.b}</div>
	<div>b: ${sessionScope.b}</div>
	
	<div>c: ${requestScope.c}</div>
	<div>d: ${sessionScope.d}</div>
	<div>e: ${applicationScope.e}</div>
	
	
	<%
		pageContext.setAttribute("n1", 10);
		pageContext.setAttribute("n2", 3);
	%>
	
	<h2>EL 기능</h2>
	
	<h3>EL 연산 기능</h3>
	
	<div>n1 + 10 = <%= (int)pageContext.getAttribute("n1") + 10 %></div>
	<div>n1 + 10 = ${n1} + 10</div>
	<div>n1 + 10 = ${n1 + 10}</div>
	
	<div>n1 + n2 = <%= (int)pageContext.getAttribute("n1") + (int)pageContext.getAttribute("n2") %></div>
	
	<div>n1 + n2 = ${n1} + ${n2}</div>
	
	<div>n1 + n2 = ${n1 + n2}</div>
	<div>n1 - n2 = ${n1 - n2}</div>
	<div>n1 * n2 = ${n1 * n2}</div>
	<div>n1 / n2 = ${n1 / n2}</div>
	<div>n1 % n2 = ${n1 % n2}</div>
	<div>n1 mod n2 = ${n1 mod n2}</div>
	
	<hr>
	
	<div>n1 > n2 = ${n1 > n2}</div>
	<div>n1 &gt; n2 = ${n1 gt n2}</div>
	
	<div>n1 < n2 = ${n1 < n2}</div>
	<div>n1 &lt; n2 = ${n1 lt n2}</div>
	
	<div>n1 >= n2 = ${n1 >= n2}</div>
	<div>n1 &gt;= n2 = ${n1 ge n2}</div>
	
	<div>n1 <= n2 = ${n1 <= n2}</div>
	<div>n1 &lt;= n2 = ${n1 le n2}</div>
	
	<div>n1 == n2 = ${n1 == n2}</div>
	<div>n1 == n2 = ${n1 eq n2}</div>
	
	<div>n1 != n2 = ${n1 != n2}</div>
	<div>n1 != n2 = ${n1 ne n2}</div>
	
	<hr>
	
	<div>${true && true}</div>
	<div>${true || false}</div><!-- short-circuit -->
	<div>${!true}</div>
	
	<div>${true and true}</div>
	<div>${true or false}</div>
	<div>${not true}</div>
	
	<hr>
	
	<div>${n1 > 0 ? "양수" : "음수"}</div>
	
	<hr>
	
	<div>${"홍길동".equals("홍길동")}</div>
	<div>${"홍길동" == "홍길동"}</div>
	
	<hr>
	
	<%
		HashMap<String,String> map = new HashMap<String,String>();
	
		map.put("name", "홍길동");
		map.put("gender", "남자");
		map.put("address", "서울시 강남구 역삼동");
		
		pageContext.setAttribute("map", map);
	%>
	
	<h3>객체 멤버 접근 표현 방식</h3>
	
	<ul>
		<li>이름: <%= map.get("name") %></li>
		<li>성별: <%= map.get("gender") %></li>
		<li>주소: <%= map.get("address") %></li>
	</ul>
	
	<div>${map}</div>
	
	<ul>
		<li>이름: ${map.get("name")}</li>
		<li>성별: ${map["gender"]}</li>
		<li>주소: ${map.address}</li>
	</ul>
	
	<%
		Student s1 = new Student();
	
		s1.setName("아무개");
		s1.setGender("여자");
		s1.setAddress("서울시 강남구 대치동");
		
		pageContext.setAttribute("s1", s1);
	%>
	<ul>
		<li>이름: <%= s1.getName() %></li>
		<li>성별: <%= s1.getGender() %></li>
		<li>주소: <%= s1.getAddress() %></li>
	</ul>
	
	<ul>
		<li>이름: ${s1.getName()}</li>
		<li>성별: ${s1["gender"]}</li>
		<li>주소: ${s1.address}</li>
	</ul>
	
	<hr>
	
	<%
		Student s2 = null;
		String s3 = "";
		
		pageContext.setAttribute("s2", s2);
		pageContext.setAttribute("s3", s3);
	%>
	
	<div>${s2 == null}</div>
	<div>${s3 == null}</div>
	<div>${s3 == ""}</div>
	<div>${s3 == null || s3 == ""}</div>
	
	<div>${empty s2}</div>
	<div>${empty s3}</div>
	<div>${empty s4}</div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





