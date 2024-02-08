<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 쓰기</title>
</head>
<body>
	<h2>댓글 쓰기</h2>
	<form method="post" action="/db/insert-reply">
		<label>이름:<input name="writer" type="text"></label>
		<label>내용:<input name="text" type="text"></label>
		<button type="submit">작성</button>
	</form>
	<a href="/db/replylist.jsp">댓글 보기</a>
</body>
</html>