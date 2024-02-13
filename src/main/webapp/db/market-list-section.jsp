<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kuwon.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
		<section class="mt-3 d-flex flex-wrap">
		<%
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connect();
			String query = "SELECT used_goods.image, used_goods.title, used_goods.price, seller.nickname\r\n"
					+ "FROM `used_goods`\r\n"
					+ "JOIN `seller` ON used_goods.sellerId = seller.id\r\n"
					+ "ORDER BY used_goods.id DESC;";
			ResultSet resultSet = mysqlService.select(query);
			
			while(resultSet.next()){
				String img = resultSet.getString("used_goods.image");
				String title = resultSet.getString("used_goods.title");
				int price = resultSet.getInt("used_goods.price");
				String nickname = resultSet.getString("seller.nickname");
		%>
			<div class="item-box mt-2 p-2">
			<%	if(img != null){ %>
				<img alt="<%= title %>" width="100%" height="75%" src="<%= img %>">
			<%	}else{ %>
				<div class="w-100 h-75 d-flex align-items-center justify-content-center">
					<div class="text-center h3 text-secondary">이미지 없음</div>
				</div>
			<%	} %>
				<div>
					<div class="headline mt-1"><%= title %></div>
					<div class="text-secondary mt-1"><%= price %>원</div>
					<div class="author"><%= nickname %></div>
				</div>
			</div>
		<% } %>
		</section>