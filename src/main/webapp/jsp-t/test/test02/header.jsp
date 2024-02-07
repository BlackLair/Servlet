<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex align-items-center">
			<div class="col-12 d-flex">
				<div id="logo"><a href="/jsp-t/test/test02/test02.jsp" class="text-success display-4 mr-5 text-decoration-none">Melong</a></div>
				<div class="d-flex align-items-center">
					<form method="get" action="/jsp-t/test/test02/songInfo.jsp" class="d-block">
						<div class="input-group">
								<input type="text" class="form-control" name="search" id="input-search" aria-describedby="btn-search">
								<div class="input-group-append">
									<button type="submit" class="btn bg-info text-white" id="btn-search">검색</button>
								</div>
						</div>					
					</form>
				</div>
			</div>
		</header>

		