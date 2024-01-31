<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String operand1 = request.getParameter("operand1");
	String operand2 = request.getParameter("operand2");
	String operator = request.getParameter("operator");
	String goBackScript = "";
	String operatorChar = "";
	double result = 0;
	double op1 = 0;
	double op2 = 0;
	if(operand1 == null || operand2 == null || operator == null
			|| operand1 == "" || operand2 == ""){
		goBackScript = "<script>alert(\"잘못된 접근입니다.\");" + "location.replace(\"/jsp/test/test04-input.jsp\");" + "</script>";
	}else{
		result = 0;
		try{
			op1 = Double.parseDouble(operand1);
			op2 = Double.parseDouble(operand2);
		}catch (Exception e){
			goBackScript = "<script>alert(\"형식이 바르지 않습니다.\");" + "location.replace(\"/jsp/test/test04-input.jsp\");" + "</script>";
		}
		if(operator.equals("add")){
			result = op1 + op2;
			operatorChar = "+";
		}else if(operator.equals("sub")){
			result = op1 - op2;
			operatorChar = "-";
		}else if(operator.equals("mul")){
			result = op1 * op2;
			operatorChar = "X";
		}else if(operator.equals("div")){
			result = op1 / op2;
			operatorChar = "/";
		}else{
			goBackScript = "<script>alert(\"잘못된 접근입니다.:연산자\");" + "location.replace(\"/jsp/test/test04-input.jsp\");" + "</script>";	
		}
	}



	
%>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<h2>계산 결과</h2>
	<h1><%= op1 %> <%= operatorChar %> <%= op2 %> = <span class="text-info"><%= result %></span></h1>
	<%= goBackScript %>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>