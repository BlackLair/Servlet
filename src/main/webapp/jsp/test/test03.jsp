<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
	<%
		String requestMsg = request.getParameter("requestMsg");
		String requestString = "";
		String titleName = "";
		SimpleDateFormat format;
		String script = "";
		Date now = new Date();
		if(requestMsg.equals("date")){
			format = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
			requestString = format.format(now);
			titleName = "오늘 날짜";
		}else if(requestMsg.equals("time")){
			format = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
			requestString = format.format(now);
			titleName = "현재 시각";
		}else{
			script = "<script>alert(\"잘못된 접근입니다.\");" + "location.replace(\"/jsp/test/test03-input.jsp\");" + "</script>";
		}
		
	%>
<html>
<head>
<meta charset="UTF-8">
<title><%= titleName %></title>
</head>
<body>

	<h2><%= requestString %></h2>
	<%= script %>
</body>
</html>