<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selllist</title>
<link href="${pageContext.request.contextPath}/css/selllist.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="category.jsp" %>
 <h2 class="page-title">판매내역</h2>
        <div class="purchase-container">
          <!-- 헤더 행 -->
          <div class="purchase-header">
            <div class="column">주문번호</div>
            <div class="column">IMAGE</div>
            <div class="column">ITEM</div>
            <div class="column">PRICE</div>
          </div>
           <!-- 데이터 행 -->
           <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="image1.jpg" alt="상품 이미지"></div>
            <div class="column">블랙 앤 더블 롱 앰 매쉬<br>ALLOVER LOGO TRIPLE S 스니커즈</div>
            <div class="column">30,000원</div>
          </div>
          <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="image2.jpg" alt="상품 이미지"></div>
            <div class="column">DENIM PANTS</div>
            <div class="column">55,500원</div>
          </div>
          <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="image3.jpg" alt="상품 이미지"></div>
            <div class="column">TRENCH COAT</div>
            <div class="column">120,500원</div>
          </div>
          <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="image4.jpg" alt="상품 이미지"></div>
            <div class="column">블루 코트 드레스 WRAP CARCOAT<br>BALENCIAGA</div>
            <div class="column">13,000원</div>
          </div>
          <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="image4.jpg" alt="상품 이미지"></div>
            <div class="column">0~36개월 카시트 <br>DAIICHI</div>
            <div class="column">130,000원</div>
          </div>
        </div>
</body>
</html>