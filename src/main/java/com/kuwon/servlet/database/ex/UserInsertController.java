package com.kuwon.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuwon.servlet.common.MysqlService;

@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setContentType("text/plain");
//		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + birthday +"', '" + email + "');";
		int count = mysqlService.update(query);
//		out.println("수행 결과 : " + count);
	
		// redirect
		// /db/user-list.jsp로 이동
		// response에 /db/user-list.jsp 이동하라는 정보를 담음
		response.sendRedirect("/db/user-list.jsp");
	}

}
