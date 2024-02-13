<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div class="wrap">
		<%@ include file="market-header.jsp" %>
		<section class="section-upload">
			<div class="display-4">물건 올리기</div>
			<form method="post" action="#">
				<div class="d-flex mt-5 justify-content-between">
					<select class="form-control col-3 dropdown-toggle">
					  <option class="bg-secondary text-white" selected>-아이디 선택-</option>
					  <option class="bg-secondary text-white">One</option>
					  <option class="bg-secondary text-white">Two</option>
					  <option class="bg-secondary text-white">Three</option>
					</select>
					<input type="text" class="form-control col-5" placeholder="제목">
					<div class="input-group col-3">
						<input type="text" class="form-control" placeholder="가격" aria-describedby="span_currency">
						<div class="input-group-append">
							<span class="input-group-text" id="span_currency">원</span>
						</div>
					</div>
				</div>
				<textarea class="form-control w-100 mt-4" rows="5"></textarea>
				<div class="input-group mt-4">
					<div class="input-group-prepend">
						<span class="input-group-text">이미지 url</span>
					</div>
					<input type="text" class="form-control">
				</div>
				<button type="submit" class="form-control bg-light mt-4">저장</button>
			</form>
		</section>
		<%@ include file="market-footer.jsp" %>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>