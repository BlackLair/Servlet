<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
<%
	double value = Double.parseDouble(request.getParameter("value"));
	String[] measures = request.getParameterValues("measures");
	String result = "";
	for(String temp : measures){
		if(temp.equals("inch")){
			result = result + (value * 0.393700787) + " in<br>";
		}else if(temp.equals("yard")){
			result = result + (value * 0.010936133) + " yd<br>";
		}else if(temp.equals("ft")){
			result = result + (value * 0.032808399) + " ft<br>";
		}else if(temp.equals("m")){
			result = result + (value * 0.01) + " m<br>";
		}
	}
%>

	<h2>변환 결과</h2>
	<%= value %>
	<hr>
	<h3><%= result %></h3>
</body>
</html>