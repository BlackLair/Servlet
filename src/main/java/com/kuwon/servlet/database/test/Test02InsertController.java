package com.kuwon.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuwon.servlet.common.MysqlService;

@WebServlet("/db/test/favorites-insert")
public class Test02InsertController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		String query = "INSERT INTO `favorites`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		mysqlService.update(query);
		response.sendRedirect("/db/favorites.jsp");
		
	}

}
