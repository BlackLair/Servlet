package com.kuwon.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kuwon.servlet.common.MysqlService;

@WebServlet("/db/marketUpload")
public class MarketUpload extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String priceStr = request.getParameter("price");
		String article = request.getParameter("article");
		String imgUrl = request.getParameter("imgUrl");
		if(imgUrl == null || imgUrl.length() == 0) {
			imgUrl = "NULL";
		}else {
			imgUrl = "'" + imgUrl + "'";
		}
		String query = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `image`)\r\n"
				+ "VALUES\r\n"
				+ "(" + id + ", '" + title + "', " + priceStr + ", '" + article + "', " + imgUrl + ");";
		mysqlService.update(query);
		response.sendRedirect("/db/market-list.jsp");
	}
}
