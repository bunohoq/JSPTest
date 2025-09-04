<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		#fileList > div {
			margin-top: 5px;
		}
		#fileList > div > input {
			width: 290px;
		}
		#fileList > div > span {
			font-size: 1.5rem;
			cursor: pointer;
			margin-left: 5px;
		}
	</style>
</head>
<body class="narrow">
	<!-- ex16.jsp -->
	<h1>다중 파일 업로드</h1>
	
	<form method="POST" action="ex16ok.jsp" enctype="multipart/form-data">
	<table class="vertical">
		<tr>
			<th>제목</th>
			<td><input type="text" name="subject"></td>
		</tr>
		<tr>
			<th>파일</th>
			<td>
				<div><input type="file" name="attch1"></div>
				<div id="fileList"></div>
				<hr>
				<input type="button" value="첨부파일 추가하기" id="btnFile">
			</td>
		</tr>
	</table>	
	<div>
		<button>보내기</button>
	</div>
	</form>
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
		let no = 2;
	
		$('#btnFile').click(() => {
			
			$('#fileList')
			.append('<div><input type="file" name="attch' + no + '"><span onclick="del();">&times;</span></div>');
			
			no++;
			
		});
		
		function del() {
			$(event.target).parent().remove();
		}
	
	</script>
</body>
</html>







