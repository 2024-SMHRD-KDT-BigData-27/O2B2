<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_Details</title>
<link href="${pageContext.request.contextPath}/css/Product_Details.css"
	rel="stylesheet" type="text/css">

</head>
<body>
	<%@include file="category.jsp"%>
	<%
	ProductDAO dao = new ProductDAO();
	ProductDTO detail = (ProductDTO) dao.proDetail(request.getParameter("p_id"));
	%>


	<div class="container">
		<!-- 상품 이미지 및 기본 정보 -->
		<div class="product" style="position: relative;">
			<!-- position 추가 -->
			<div class="product-image">
				<img src="<%= detail.getPROD_IMG() %>" alt="유모차 이미지"
					style="max-width: 300px; border-radius: 8px;">
			</div>
			<div class="product-info">
				<h2 class="product-title"><%= detail.getPROD_NAME() %></h2>
				<h2>판매가격 : <span class="price"><%= detail.getPROD_PRICE() %>원</span></h2>
				
				<hr class="line">					
				
					<strong>배송비 : </strong><%= detail.getPROD_DELIVERY_FEE() %>원
					<br><br><strong>상품상태 : </strong><%= detail.getPROD_STATE() %>
				
				<div class="product-button">
					<a href="AddWishListService?p_id=<%= request.getParameter("p_id") %>" class="btn2"><button>❤찜</button></a>
					<a href="cleandelivery.jsp" class="btn1"><button>구매하기</button></a>
				</div>
			</div>
		</div>

		<!-- 상세 내용 -->
		<div class="details">
			<h3 class="detail-comment">상세 내용</h3>
			<p>구매시기: <%= detail.getBUY_DATE() %></p>
			<p>실사용기간: <%= detail.getUSE_PERIOD() %></p>
			<p>상품상태: <%= detail.getPROD_STATE() %></p>
			<p>상품후기: <%= detail.getPROD_REVIEW() %></p>
			<p>성별: <%= detail.getTO_GENDER() %></p>
			<p>나이: <%= detail.getMIN_AGE() %> - <%= detail.getMAX_AGE() %>개월</p>
		</div>

		<!-- 댓글 입력 및 출력 -->
		<div class="comment-section">
			<h3 class="comment">💬 댓글</h3>
			<form action="addComment" method="post">
				<input class="recomment" name="comment" placeholder="댓글을 입력하세요...">
				<!-- required -->
				<br>
				<button type="submit" class="btn3">등록</button>
			</form>
			<div class="comment-list">
				<p>
					<strong>준원맘:</strong> 3kg 여자아이도 가능할까요? ^^*
				</p>
				<p>
					↳ <strong>가영맘:</strong> 네! 가능합니다 ~ ^^ ❤️
				</p>
			</div>
		</div>
	</div>
</body>
</html>