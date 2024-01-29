package com.kuwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		int dan = Integer.parseInt(request.getParameter("number"));
		out.println("<html><head><title>구구단</title><head><body>");
		out.println("<ul>");
		for(int i = 1; i <= 9; i++) {
			out.println("<li>" + dan + " X " + i + " = " + (i * dan) + "</li>");
		}
		out.println("</ul></body></html>");
	}
}
