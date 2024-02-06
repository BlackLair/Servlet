<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex align-items-center">
			<div class="col-12 d-flex">
				<div id="logo"><a href="/jsp-t/test/test02/test02.jsp" class="text-success display-4 mr-5 text-decoration-none">Melong</a></div>
				<div class="d-flex align-items-center">
					<div class="input-group">
							<input type="text" class="form-control" id="input-search" aria-describedby="btn-search">
							<div class="input-group-append">
								<button type="button" class="btn bg-info text-white" id="btn-search">검색</button>
							</div>
					</div>
				</div>
			</div>
		</header>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>		
		<script>
			$(document).ready(function(){
				$("#btn-search").on("click", function(){
					location.href = "http://localhost:8080/jsp-t/test/test02/songInfo.jsp?search=" + $("#input-search").val();
				});
			});
		</script>
		