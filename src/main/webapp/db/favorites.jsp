<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kuwon.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
	#wrap{
		width:1200px;
		margin:0 auto;
	}
</style>
</head>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	String query = "SELECT `id`, `name`, `url` FROM `favorites` ORDER BY `id` DESC;";
	ResultSet resultSet = mysqlService.select(query);
%>
<body>
	<div id="wrap">
		<table class="table text-center">
			<thead>
				<tr>
					<th width="25%">사이트</th>
					<th width="50%">사이트 주소</th>
					<th width="25%"></th>
				</tr>
			</thead>
			<tbody>
			<%!
				public String avoidInjection(String str){
					str = str.replace("&", "&amp");
					str = str.replace("\"", "&quot");
					str = str.replace("'", "&#039");
					str = str.replace("<", "&lt;");
					str = str.replace(">", "&gt;");
					return str;
				}
			%> 
			<% while(resultSet.next()){ 
				String tempName = avoidInjection(resultSet.getString("name"));
				String tempUrl = avoidInjection(resultSet.getString("url"));
				String tempId = resultSet.getString("id");
			%>
				<tr>
					<td><%= tempName %></td>
					<td><a href="<%= tempUrl %>"><%= tempUrl %></a></td>
					<td>
						<a href="/db/test/favorites-delete?id=<%= tempId %>">삭제</a>
					</td>
				</tr>
			<% } %>
			</tbody>
		</table>
	</div>
	<a href="/db/favorites-input.jsp">즐겨찾기 추가</a>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>