package com.kuwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String introduction = request.getParameter("introduction");
		introduction = introduction.replaceAll("<", "&lt").replaceAll(">", "&gt");
		out.println("<html><head><title>입사 지원</title></head><body>");
		out.println("<h2>" + name + "님 지원이 완료 되었습니다.</h2><hr>");
		out.println("<div>지원 내용<br>" + introduction + "</div>");
		out.println("</body></html>");
		
	}
}
