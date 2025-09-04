package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		
		int a = 10;
		
		PrintWriter writer = resp.getWriter();
		
		writer.print("<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "<meta charset=\"UTF-8\">\r\n"
				+ "<title>Insert title here</title>\r\n"
				+ "<style>\r\n"
				+ "	/* CSS 영역 */\r\n"
				+ "	p {\r\n"
				+ "		\r\n"
				+ "	}\r\n"
				+ "</style>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "	<h1>Hello</h1>\r\n"
				+ "	<p>안녕하세요. 홍길동입니다.</p>\r\n"
				+ "	<p>a: ");
	
		writer.print(a);
		
		writer.print("</p>\r\n"
				+ "	<script>\r\n"
				+ "		//JavaScript 영역\r\n"
				+ "	</script>\r\n"
				+ "</body>\r\n"
				+ "</html>");
		
		writer.close();
		
	}
	
}



