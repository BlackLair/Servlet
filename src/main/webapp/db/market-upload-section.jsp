<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kuwon.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	String query = "SELECT `id`, `nickname` FROM `seller`;";
	ResultSet resultSet = mysqlService.select(query);
%>
		<section class="section-upload">
			<div class="display-4">물건 올리기</div>
			<form id="form-upload" method="post" action="/db/marketUpload">
				<div class="d-flex mt-5 justify-content-between">
					<select id="select-id" name="id" class="form-control col-3 dropdown-toggle">
					  <option value="None" class="bg-secondary text-white" selected>-아이디 선택-</option>
					  <%
					  while(resultSet.next()){
						  String nickname = resultSet.getString("nickname");
						  String id = resultSet.getString("id");
					  %>
					  <option value="<%= id %>" class="bg-secondary text-white"><%= nickname %></option>
					  <% } %>
					</select>
					<input id="input-title" name="title" type="text" class="form-control col-5" placeholder="제목">
					<div class="input-group col-3">
						<input id="input-price" name="price" type="text" class="form-control" placeholder="가격" aria-describedby="span_currency">
						<div class="input-group-append">
							<span class="input-group-text" id="span_currency">원</span>
						</div>
					</div>
				</div>
				<textarea id="input-article" name="article" class="form-control w-100 mt-4" rows="5"></textarea>
				<div class="input-group mt-4">
					<div class="input-group-prepend">
						<span class="input-group-text">이미지 url</span>
					</div>
					<input id="input-imgUrl" name="imgUrl" type="text" class="form-control">
				</div>
				<button id="btn-submit" type="submit" class="form-control bg-light mt-4">저장</button>
			</form>
		</section>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
		<script>
			let targetId = "None";
			$(document).ready(function(){
				$("#select-id").on("change", function(){
					targetId = $(this).val();
				});
				$("#form-upload").submit(function(e){
					//e.preventDefault();
					let title = $("#input-title").val();
					let price = $("#input-price").val();
					let article = $("#input-article").val();
					let imgUrl = $("#input-imgUrl").val();
					if(targetId == "None"){
						alert("작성자를 선택하세요.");
						return false;
					}
					if(title.length == 0){
						alert("제목을 입력하세요.");
						return false;
					}
					if(price.length == 0){
						alert("가격을 입력하세요.");
						return false;
					}
					/*let url = "/db/marketUpload?"
					$.get("/db/marketUpload?"
							+ "id=" + targetId
							+ "&title=" + title
							+ "&price=" + price
							+ "&article=" + article
							+ "&imgUrl=" + imgUrl
							, function(data){
							window.location.replace("/db/market-list.jsp");
					});*/
				});
			});
		</script>
		