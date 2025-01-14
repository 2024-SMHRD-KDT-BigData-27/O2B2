<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_Registration</title>
<link
	href="${pageContext.request.contextPath}/css/Product_Registration.css"
	rel="stylesheet" type="text/css">

</head>
<body>
	<%@include file="category.jsp"%>

	<div class="container">
		<!-- 상품 이미지 및 기본 정보 -->
		<div class="product" style="position: relative;">
			<!-- position 추가 -->
			<div class="product-image">
				<img src="stroller.jpg" alt="유모차 이미지"
					style="max-width: 300px; border-radius: 8px;">
			</div>
			<div class="product-info">
				<label for="title" class="title">상품명 : </label> <input type="text"
					id="title" required> <br>
				<label for="price">판매 가격 : </label> <input type="number" id="price"
					required>원 <br>
				<label for="delivery-price">배송비 : </label> <input type="number"
					id="delivery-price" required>원


			</div>
		</div>
</div>
		<!-- 제품 등록 페이지 -->
		<div class="details">
			<h3 class="detail-comment">상세 내용 입력</h3>
			<form action="submitDetails" method="post">
				<label for="purchaseDate">구매시기:</label> <input type="month"
					id="purchaseDate" name="purchaseDate" required> <br>
				<label for="usagePeriod">실사용 기간 (개월):</label> <input type="number"
					id="usagePeriod" name="usagePeriod" min="1" max="120" required>

				<br>
				<label for="productCondition">상품상태:</label> <select
					id="productCondition" name="productCondition" required>
					<option value="상">상</option>
					<option value="중">중</option>
					<option value="하">하</option>
				</select> <br>
				<label for="review">상품후기:</label>
				<textarea id="review" name="review" placeholder="상품 후기를 입력하세요..."
					rows="4" required></textarea>

				<br>
				<label for="gender">성별:</label> <select id="gender" name="gender"
					required>
					<option value="남아">남아</option>
					<option value="여아">여아</option>
					<option value="무관">무관</option>
				</select> <br>
				<label for="age">나이:</label> <input type="number" id="age"
					name="age" placeholder="예: 3" min="0"> <br>
				<button type="submit" class="btn1">상세 정보 저장</button>
			</form>
		</div>
		
</body>
</html>