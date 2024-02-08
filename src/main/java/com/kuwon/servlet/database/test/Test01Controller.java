package com.kuwon.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuwon.servlet.common.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setContentType("text/plain");
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		PrintWriter out = response.getWriter();
		String updateQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
		int count = mysqlService.update(updateQuery);
		out.println("수행결과 : " + count);

		
	}
}
