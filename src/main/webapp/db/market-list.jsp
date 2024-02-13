<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kuwon.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div class="wrap">
		<header class="text-white">
			<div class="title d-flex align-items-center justify-content-center">
				<div class="h2 text-center">HONG당무 마켓</div>
			</div>
			<nav class="mt-2">
				<ul class="w-100 nav nav-fill">
					<li class="nav-item"><a href="#" class="nav-link text-white h4">리스트</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-white h4">물건 올리기</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-white h4">마이 페이지</a></li>
				</ul>
			</nav>
		</header>
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
		<footer class="d-flex justify-content-center align-items-center">
			<div>Copyright 2024. HONG All Rights Reserved.</div>	
		</footer>
	</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>