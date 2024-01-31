<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
	.box{
		width:250px;
	}
	.minibox{
		width:60px;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>길이 변환</h2>
		<form method="post" action="/jsp/test/test05.jsp">
			<div class="box d-flex">
				<input class="form-control" type="text" name="value"><label>cm</label>
			</div>
			<div class="box d-flex">
				<label>인치<input type="checkbox" value="inch" name="measures"></label>
				<label>야드<input type="checkbox" value="yard" name="measures"></label>
				<label>피트<input type="checkbox" value="ft" name="measures"></label>
				<label>미터<input type="checkbox" value="m" name="measures"></label>
			</div>
			<div class="minibox">
				<button type="submit" class="form-control bg-success text-white">변환</button>
			</div>
		</form>
	
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>