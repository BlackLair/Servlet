<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kuwon.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 목록</title>
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	String query = "SELECT `writer`, `text`, `createdAt` FROM `reply` ORDER BY `createdAt`";
	ResultSet resultSet = mysqlService.select(query);
%>
	<table border="1">
		<thead>
			<tr>
				<th>작성자</th>
				<th>내용</th>
				<th>작성시각</th>
			</tr>
		</thead>
		<tbody>
		<% while(resultSet.next()){ %>
			<tr>
				<td><%= resultSet.getString("writer") %></td>
				<td><%= resultSet.getString("text") %></td>
				<td><%= resultSet.getString("createdAt") %></td>
			</tr>
		<% } %>
		</tbody>
	</table>
	<a href="/db/writereply.jsp">댓글 작성하기</a>
</body>
</html>