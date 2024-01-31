<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input 다루기</title>
</head>
<body>
	<%
		// 단일 값 post method로 전달받기
		String nickname = request.getParameter("nickname");
		String animal = request.getParameter("animal");
		String fruit = request.getParameter("fruit");
		
		// 여러 데이터 전달받기
		String[] foodArray = request.getParameterValues("foods");
		String foods = "";
		for(String temp : foodArray){
			foods = foods + temp + " ";
		}
	%>
	<h3><%= nickname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
	<h3><%= foods %></h3>
</body>
</html>