<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		fieldset{
			width: 250px;
			margin: 1rem;
		}
		fieldset input {
			display: block;
			margin-bottom: 5px;
		}
	</style>
</head>
<body>
	<!-- ex22_cookie.jsp -->
	<h1>첫번째 페이지</h1>
	
	<div>
		<a href="ex22_cookie.jsp">첫번째 페이지</a>
		<a href="ex22_cookie_2.jsp">두번째 페이지</a>
		<a href="ex22_cookie_3.jsp">세번째 페이지</a>
	</div>
	
	<!-- 
	
		사용자 색 선택 
		
		1. 로그인 X
			- 현재 PC에서만 적용 > Cookie
			- 모든 페이지에서 적용 > Cookie
			
		2. 로그인O
			- 모든 PC에서 적용(+로그인) > DB
			- 모든 페이지에서 적용 > DB
	
	 -->
	
	<fieldset>
		<legend>Site Options</legend>
		<input type="color" id="color" value="#FFFFFF">
		<input type="button" id="btnApply" value="테마 적용하기">
		<input type="button" id="btnClear" value="테마 삭제하기">		
	</fieldset>
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="js/cookie.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
		/* 
			쿠키
			1. 메모리 쿠키
				- 브라우저가 켜있는 동안만 유지
				- 유효기간을 설정X
			
			2. 하드 쿠키
				- 브라우저 실행 유무와 상관없이 계속 유지
				- 유효기간을 설정O > 실제로 하드
		
		*/
	
	
		$('#btnApply').click(() => {
			$('body').css('background-color', $('#color').val());
			setCookie('color', $('#color').val());
		});
		
		setCookie('color', $('#color').val(), 30);
				
		if (getCookie('color') != '') {
			
			$('body').css('background-color', getCookie('color'));
			$('#color').val(getCookie('color'));
		}
		
		$('#btnClear').click(() => {
			
			//쿠키 삭제 > 기능 없음
			setCookie('color', '', -1);
			
			$('body').css('background-color', '#FFFFFF');
			$('#color').val('#FFFFFF');
		
		});
	</script>
</body>
</html>

