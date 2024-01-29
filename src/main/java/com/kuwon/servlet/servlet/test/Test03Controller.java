package com.kuwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("""
				<html>
					<head>
						<meta charset="utf-8">
						<title>오늘의 뉴우스</title>
					</head>
					<body>
						<h2>[단독]고양이가 야옹해</h2>
						<div>기사 입력시간 : 2021/03/27 06:07:04</div>
						<hr>
						<div>끝</div>
					</body>
				</html>
						""");
	}
}
