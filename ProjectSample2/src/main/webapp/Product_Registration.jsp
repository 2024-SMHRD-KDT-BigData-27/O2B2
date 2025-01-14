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
		<div class="total">
			<div class="container">
				<table class="product-table">
					<tr>
						<td class="product-image-cell">
							<div class="product-image">
								이미지 <input type="text" name="img">
							</div>
						</td>
						<td class="product-info-cell">
							<table class="product-info-table">
								<tr>
									<td><label for="title" class="title">상품명 : </label></td>
									<td><input type="text" id="title" required name="name">
									</td>
								</tr>
								<tr>
									<td><label for="price">판매 가격 : </label></td>
									<td><input type="text" id="price" required name="price">원
									</td>
								</tr>
								<tr>
									<td><label for="delivery-price">배송비 : </label></td>
									<td><input type="text" id="delivery-price" required
										name="delivery-price">원</td>
								</tr>
							</table>
							<div class="product-notes">
								<h4>* 상품명은 정확하게 기입해주시길 바랍니다.</h4>
								<h4>* 배송비는 0 ~ 3,000원까지 가능합니다.</h4>
							</div>
						</td>
					</tr>
				</table>
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
				</select> <br> <label for="review">상품후기:</label> <input type="text"
					id="review" name="review" placeholder="상품 후기를 입력하세요..." required>

				<br> <label for="gender">성별:</label> <select id="gender"
					name="gender" required>
					<option value="M">남아</option>
					<option value="W">여아</option>
					<option value="N">무관</option>
				</select> <br> <label for="age">나이:</label> <input type="number"
					id="age" name="min-age" placeholder="예: 3" min="0"> ~ <input
					type="number" id="age" name="max-age" placeholder="예: 3" min="0">
				<br>
				<button type="submit" class="btn1">상세 정보 저장</button>
			</div>
		</div>
	</form>
</body>
</html>