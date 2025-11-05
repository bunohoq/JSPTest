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
	<!-- ex23_cookie.jsp -->
	<h1>로그인</h1>
	
	<!--  
		1. 아이디 저장하기(아이디 > 쿠키 저장)
		2. 자동 로그인 (아이디,암호 > 쿠키 저장)
	-->
	<form method="POST" action="ex23_cookie_ok.jsp">
	<table class="vertical content">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" required class="short"></td>
		</tr>
		<tr>
			<th>암호</th>
			<td><input type="password" name="pw" required class="short"></td>
		</tr>
	</table>
	<div>
		<div style="margin-bottom: 10px;">
			<label><input type="checkbox" id="cbRemember" name="cbRemember" value="y"> 아이디 저장하기</label>
		</div>
		<div><input type="submit" value="로그인"></div>
	</div>
	</form>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="js/cookie.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
		//공공장소나 피씨방에서.. 사용 말라!! 	
	
		if (getCookie('id') != '') {
			//저장된 아이디를 가져오기
			$('input[name=id]').val(getCookie('id'));
			$('input[name=pw]').focus();
			$('#cbRemember').prop('checked', true);
		} else {
			$('input[name=id]').focus();
		}
	
	
	</script>
</body>
</html>





