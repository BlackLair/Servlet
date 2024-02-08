package com.kuwon.servlet.database.ex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuwon.servlet.common.MysqlService;

@WebServlet("/db/insert-reply")
public class InsertReplyContoller extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String writer = request.getParameter("writer");
		String text = request.getParameter("text");
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		String query = "INSERT INTO `reply`\r\n"
				+ "(`writer`, `text`)\r\n"
				+ "VALUE\r\n"
				+ "('" + writer + "', '" + text + "');";
		mysqlService.update(query);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/db/replylist.jsp");
		requestDispatcher.forward(request, response);
		//response.sendRedirect("/db/replylist.jsp");
	}
}
