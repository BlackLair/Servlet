<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 측정 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<%!
		public double getBMI(Integer height, Integer weight){
			return weight / ((height / 100.0) * (height/ 100.0));
		}
	%>
	<%
		Integer height = Integer.parseInt(request.getParameter("height"));
		Integer weight = Integer.parseInt(request.getParameter("weight"));
		double BMI = -1.0;
		if(height != null && weight != null)
			BMI = getBMI(height, weight);
		String result = null;
		String color = null;
		
		if(BMI < 18.5){
			result = "저체중";
			color = "text-primary";
		}else if(BMI < 25){
			result = "정상";
			color = "text-info";
		}else if(BMI < 30){
			result = "과체중";
			color = "text-warning";
		}else{
			result = "비만";
			color = "text-danger";
		}
	%>
	<h2>BMI 측정 결과</h2>
	<div class="display-3">당신은 <span class="<%= color %>"><%= result %></span> 입니다.</div>
	<div>BMI 수치 : <%= BMI %></div>
	
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>