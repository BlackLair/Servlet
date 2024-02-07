package com.kuwon.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuwon.servlet.common.MysqlService;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		// 데이터베이스 접속
//		try {
//			
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			// 접속 주소, id, password
//			String url = "jdbc:mysql://localhost:3307/mytestdb";
//				// jdbc:mysql://주소:포트/db이름
//			String id = "root";
//			String password = "Pa$$w0rd";
//				// 실제로 소스코드에는 id, password 정보가 포함되면 안됨.
//			
//			Connection connection = DriverManager.getConnection(url, id, password);
//			Statement statement = connection.createStatement();
//				// java.sql.Statement
//			
//			String selectQuery = "SELECT * FROM `used_goods`";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//				// Iterator와 동작이 유사함
//				// 처음엔 존재하지 않는 가상의 행(-1번째)을 가리킴
//				// resultSet.next() 호출 시 다음 행을 가리킴
//				// 다음 행이 없는 경우 next() 메소드는 false 반환
//				// getInt(열), getString(열) 등을 통해 가리키고 있는 행의 특정 열 데이터를 가져올 수 있음
//			out.println("<html><head><title>중고물품 목록</title></head><body>");
//
//			while(resultSet.next()){
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				out.println("<div>제목 : " + title + "가격 : " + price + "원");
//			}
//
//			out.println("<body></html>");
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		ResultSet resultSet = mysqlService.select("SELECT * FROM `used_goods`");
		
		out.println("<html><head><title>중고물품 목록</title></head><body>");
		try {
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				out.println("<div>제목 : " + title + "가격 : " + price + "원");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.println("<body></html>");
	}

}
