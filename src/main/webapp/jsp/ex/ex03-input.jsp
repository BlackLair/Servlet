<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input 다루기</title>
</head>
<body>
	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label><input type="text" name="nickname">
		<!-- 라디오 버튼 -->
		<h3>좋아하는 동물</h3>
		<label>강아지<input type="radio" value="dog" name="animal"></label>
		<label>고양이<input type="radio" value="cat" name="animal"></label>
		<label>사자<input type="radio" value="lion" name="animal"></label>
		
		<!-- 셀렉트박스 -->
		<h3>좋아하는 과일 선택</h3>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option value="strawberry">딸기</option>
		</select>
		<h3>좋아하는 음식을 모두 고르세요</h3>
		<label>케익<input value="케익" name="foods" type="checkbox"></label>
		<label>민트초코<input value="민트초코" name="foods" type="checkbox"></label>
		<label>번데기<input value="번데기" name="foods" type="checkbox"></label>
		<button type="submit">입력</button>
	</form>
</body>
</html>