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

	<form action="RegisterProductService" method="post">
		<div class="container">
			<!-- 상품 이미지 및 기본 정보 -->
			<div class="product" style="position: relative;">
				<!-- position 추가 -->
				<div class="product-image">
					이미지 <input type="text" name="img">
				</div>
				<div class="product-info">
					<label for="title" class="title">상품명 : </label> <input type="text"
						id="title" required name="name"> <br> <label
						for="price">판매 가격 : </label> <input type="number" id="price"
						required name="price">원 <br> <label
						for="delivery-price">배송비 : </label> <input type="number"
						id="delivery-price" required name="delivery-price">원


				</div>
			</div>
		</div>
		
		<!-- 제품 등록 페이지 -->
		<div class="details">
			<h3 class="detail-comment">상세 내용 입력</h3>
			<label for="purchaseDate">카테고리:</label> <select name="category">
				<option>유모차</option>
				<option>옷</option>
			</select> <label for="purchaseDate">구매시기:</label> <input type="month"
				id="purchaseDate" name="purchaseDate" required> <br> <label
				for="usagePeriod">실사용 기간 (개월):</label> <input type="number"
				id="usagePeriod" name="usagePeriod" min="1" max="120" required>

			<br> <label for="productCondition">상품상태:</label> <select
				id="p.roductCondition" name="productCondition" required>
				<option value="상">상</option>
				<option value="중">중</option>
				<option value="하">하</option>
			</select> <br> <label for="review">상품후기:</label>
			<textarea id="review" name="review" placeholder="상품 후기를 입력하세요..."
				rows="4" required></textarea>

			<br> <label for="gender">성별:</label> <select id="gender"
				name="gender" required>
				<option value="M">남아</option>
				<option value="W">여아</option>
				<option value="N">무관</option>
			</select> <br> <label for="age">나이:</label> <input type="number" id="age"
				name="min-age" placeholder="예: 3" min="0"> ~ <input
				type="number" id="age" name="max-age" placeholder="예: 3" min="0">
			<br>
			<button type="submit" class="btn1">상세 정보 저장</button>
		</div>

	</form>
</body>
</html>