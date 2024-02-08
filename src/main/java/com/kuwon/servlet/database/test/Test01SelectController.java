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

@WebServlet("/db/test/test01-select")
public class Test01SelectController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		String selectQuery = "SELECT `address`, `area`, `type`\r\n"
				+ "FROM `real_estate`\r\n"
				+ "ORDER BY `id` DESC\r\n"
				+ "LIMIT 10;";
		ResultSet result = mysqlService.select(selectQuery);
		try {
			while(result.next()) {
				out.print("매물 주소 : " + result.getString("address")
						+ ", 면적 : " + result.getInt("area")
						+ ", 타입 : " + result.getString("type") + "\n");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
