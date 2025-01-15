<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart_container</title>
<link href="${pageContext.request.contextPath}/css/cart_container.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="search.jsp"%>

	<div class="cart-container">
		<h1>장바구니</h1>
		<table class="cart-table">
			<thead>
				<tr>
					<th></th>
					<th>제품 이미지</th>
					<th>제목</th>
					<th>수량</th>
					<th>금액</th>
					<th>선택</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td><input type="checkbox"></td>
					<td><img src="img1.jpg" alt="상품 이미지 1" class="product-image"></td>
					<td>시크링</td>
					<td><input type="number" min="1" value="1"
						class="quantity-input"></td>
					<td>5,700원</td>
					<td>
						<button class="cart-btn">삭제</button>

					</td>
				</tr>

				<tr>
					<td><input type="checkbox"></td>
					<td><img src="img2.jpg" alt="상품 이미지 2" class="product-image"></td>
					<td>플라워썸</td>
					<td><input type="number" min="1" value="1"
						class="quantity-input"></td>
					<td>4,100원</td>
					<td>
						<button class="cart-btn">삭제</button>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="order-button-container">
			<button class="order-btn">주문하기</button>
		</div>
	</div>
</body>
</html>