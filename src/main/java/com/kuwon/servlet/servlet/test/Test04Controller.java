package com.kuwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String list = "";
		for(int i = 1; i <= 30; i++) {
			list += "<li>" + i + "번째 리스트</li>";
		}
		out.println("""
				<html>
					<head>
						<meta charset="utf-8">
						<title>리스트</title>
					</head>
					<body>
						<ul>
				""" + list + """
						</ul>
					</head>
				</html>
						""");
	}

}
