<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String cbRemember = request.getParameter("cbRemember");
	
	//로그인 처리
	if ((id.equals("hong") && pw.equals("1234"))
		|| (id.equals("test") && pw.equals("1234"))) {
		
		//로그인 성공
		session.setAttribute("result", true);
		
		//아이디 저장하기
		if (cbRemember != null && cbRemember.equals("y")) {
			
			//아이디 저장 > 쿠키에 저장
			//자바(JSP/Servlet)에서 쿠키를 조작
			
			Cookie cookie = new Cookie("id", id); //쿠키 생성
			
			//Sets the maximum age in seconds for this Cookie. 
			cookie.setMaxAge(365 * 24 * 60 * 60);
			
			response.addCookie(cookie); //쿠키 저장(서버 > 클라이언트)
			
		} else {
			
			//아이디(쿠키) 삭제하기
			Cookie[] cookies = request.getCookies();
			
			for (int i=0; i<cookies.length; i++) {
				if (cookies[i].getName().equals("id")) {
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]); //브라우저에 적용
					break;
				}
			}
			
		}
		
	} else {
		
		//로그인 실패
		session.setAttribute("result", false);
		
	}
	
	response.sendRedirect("ex23_cookie_user.jsp");
	

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
	<!-- ex23_cookie_ok.jsp -->
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





