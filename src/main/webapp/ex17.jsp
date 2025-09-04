<%@page import="java.util.Comparator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//디렉토리 탐색
	String path = application.getRealPath("/pic");

	File dir = new File(path);
	File[] list = dir.listFiles();
	
	//list.sort();
	/* 
	Arrays.sort(list, new Comparator<File> () {
		public int compare(File o1, File o2) {
			return Long.compare(o1.lastModified(), o2.lastModified());
		}
	}); 
	*/
	
	Arrays.sort(list, (o1, o2) 
					-> Long.compare(o2.lastModified(), o1.lastModified()));
	
	

%>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<style>
		#list {
			display: flex;
			flex-wrap: wrap;
			width: 750px;
			margin-left: 25px;
		}
		
		#list .item {
			border: 1px solid #999;
			width: 126px;
			height: 126px;
			margin: 11px;
			background-size: cover;
			background-repeat: no-repeat;
			background-position: center center;
			position: relative;
			left: 0;
			top: 0;
		}
		
		#list .item span {
			font-size: 1.5rem;
			/* text-shadow: 0 0 1px white; */
			color: white;
			cursor: pointer;
			position: absolute;
			right: 5px;
			top: 0;
			display: none;
		} 
		#list .item:hover span {
			display: inline;
		}
		
		#img1 {
			max-width: 490px;
			display: block;
			margin: 15px auto;
		}
		
	</style>
</head>
<body>
	<!-- ex17.jsp -->
	<!--  
	
		클라이언트 작업
		1. HTML
		2. CSS
		3. JavaScript
		
		서버 작업
		1. JSP
		
		작업 순서
		HTML > CSS > JavaScript > JSP
	
	-->
	<h1>Image Gallery</h1>
	
	<div id="list">
		<% 
			for (File file : list) {
				if (file.isFile()
					&& 
					(file.getName().toLowerCase().endsWith(".jpg")
					|| file.getName().toLowerCase().endsWith(".jpeg")
					|| file.getName().toLowerCase().endsWith(".gif")
					|| file.getName().toLowerCase().endsWith(".png")
					|| file.getName().toLowerCase().endsWith(".webp")
					)) {
		%>
		<div class="item" style="background-image:url(pic/<%= file.getName() %>)" data-modal-button="view" data-filename="<%= file.getName() %>">
			<span title="delete" onclick="del();">&times;</span>
		</div>
		<% }} %>
		
	</div>
	
	<hr>
	
	<form method="POST" action="ex17ok.jsp" enctype="multipart/form-data">
	<table class="vertical">
		<tr>
			<th>이미지</th>
			<td><input type="file" name="attach" required></td>
		</tr>
	</table>
	<div>
		<input type="submit" value=" 이미지 업로드 ">
	</div>
	</form>
	
	
	<div data-modal-window="view" data-modal-title="Image">
		<img id="img1">
		<hr>
		<div>
			<button class="ok" data-modal-ok="view">확인</button>
		</div>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
		$('#list .item').click(() => {
			
			 //alert($(event.target).data('filename'));
			$('#img1').attr('src', 'pic/' + $(event.target).data('filename')); 
			
		});
		
		function del() {
			
			if (confirm('delete?')) {
			
				//data-filename="dog.jpg"
				let filename = $(event.target).parent().data('filename');
				//alert(filename);
				
				location.href = 'ex17del.jsp?filename=' + filename;
				
			}
			
			event.cancelBubble = false;
			event.stopPropagation();
		}
	
	</script>
</body>
</html>











