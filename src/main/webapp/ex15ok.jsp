<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	/*  
	
		<form enctype="multipart/form-data">
		- request의 일부 기능이 동작 안함
		- request.getParameter() > 동작 안함
		- request.getParameterValues() > 동작 안함
		
		
		cos.jar > MultipartRequest 클래스가 기존의 request를 대신한다.
		
		MultipartRequest
		1. 기존의 request 객체를 Wrapping한 객체
		2. 파일 업로드 처리 구현
	
	*/

	//String txt = request.getParameter("txt");
		
		
	//업로드된 파일을 저장할 경로 > 로컬 경로 사용(드라이브명으로 시작)
	//- C:\..\..
	//1. 프로젝트 내의 특정 폴더
	//	- webapp > "files"
	//2. 프로젝트 외부의 특정 폴더
	
	//String path = "C:\\code\\server\\JSPTest\\src\\main\\webapp\\files";
	
	//C:\code\server\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\JSPTest\files
	String path = application.getRealPath("/files");
	//System.out.println(path);
	
	//업로드 파일의 최대 크기 지정
	//- 바이트 단위
	int size = 1024 * 1024 * 100; //100MB
	
	//변수 선언
	String txt = "";
	String filename = ""; 	//첨부파일명
	String orgfilename = "";//첨부파일명
	
	try {
		
		//MultipartRequest 객체 생성 == 첨부 파일 처리 완료
		MultipartRequest multi = new MultipartRequest(
									request, 	//원래 request
									path,		//업로드 위치
									size,		//최대 크기
									"UTF-8",	//인코딩
									new DefaultFileRenamePolicy()
								);
		
		//문자열 전송
		txt = multi.getParameter("txt");
		
		//업로드 파일명?
		//- <input type="file" name="attach">
		
		filename    = multi.getFilesystemName("attach");
		orgfilename = multi.getOriginalFileName("attach");
		
		
	} catch (Exception e) {
		e.printStackTrace();
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
	<!-- ex15ok.jsp -->
	<h1>결과</h1>
	
	<div>txt: <%= txt %></div>
	<div>filename: <%= filename %></div>
	<div>orgfilename: <%= orgfilename %></div>
	
	<hr>
	
	<h1>파일 다운로드</h1>
	
	<!--  
		장점: 간단함
		단점: 파일명이 다를 수 있음.(넘버링)
		      브라우저가 해석 가능 파일은 바로 열어서 보여준다.
	-->
	<div>
		<a href="/jsp/files/<%= filename %>"><%= orgfilename %></a>
	</div>
	
	<!--  
		장점: 간단함. 모든 파일을 다운로드
		단점: 파일명이 다를 수 있음.(넘버링)
	-->
	<div>
		<a href="/jsp/files/<%= filename %>" download><%= orgfilename %></a>
	</div>
	
	<div>
		<a href="ex14_session.jsp" download>세션 예제</a>
	</div>
	
	<!--  
		다운로드를 직접 구현
		장점: 완성도 높음
		단점: 코드 작성
	-->
	<div>
		<a href="download.jsp?filename=<%= filename %>&orgfilename=<%= orgfilename %>"><%= orgfilename %></a>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>





