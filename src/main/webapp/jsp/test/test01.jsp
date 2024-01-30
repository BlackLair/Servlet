<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 1번 문제
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int temp : scores){
			sum += temp;
		}
		double avg = (double)sum / scores.length;
		
		// 2번 문제
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int correctCnt = 0;
		for(String temp : scoreList){
			if(temp.contains("O")){
				correctCnt++;
			}
		}
		double score = 100 * ((double)correctCnt / scoreList.size());
	%>
	<%-- 3번 문제 --%>
	<%! public int getSum(int n){
			int sum = 0;
			for(int i = 1; i <= n; i++){
				sum += i;
			}
			return sum;
		}
	%>
	<%-- 4번 문제 --%>
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt(birthDay.substring(0, 4));
	%>
	
	
	<h2>점수 평균은 <%= avg %> 입니다.</h2>
	<h2>채점 결과는 <%= score %> 입니다.</h2>
	<h2>1에서 50까지의 합은 <%= getSum(50) %></h2>
	<h2><%= birthDay %>의 나이는 <%= 2024 - year + 1 %>살 입니다.</h2>
</body>
</html>