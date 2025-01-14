<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>buylist</title>
<link href="${pageContext.request.contextPath}/css/buylist.css" rel="stylesheet" type="text/css">

</head>
<body>
	<%@include file="category.jsp" %>
	<h2 class="page-title">구매내역</h2>
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
            <div class="column"><img src="https://cafe24.poxo.com/ec01/ozkiz1/nNeg99/vhxo94LClnrIwxcbQ2DM5mB+WDgus0cLbY6CrxB9vH5ITjuRA0ZtJKIQoRNVpTWyMJwMt2XoO9zk8+A==/_/web/product/big/202205/81eb0d97b5b3af2d6892828511629ff4.jpg" alt="상품 이미지"></div>
            <div class="column">뽀글이 양면 코트<br>울라불라</div>
            <div class="column">30,000원</div>
          </div>
          <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="https://gdimg.gmarket.co.kr/2416603356/still/400?ver=1673591069" alt="상품 이미지"></div>
            <div class="column">DENIM PANTS</div>
            <div class="column">55,500원</div>
          </div>
          <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="https://gdimg.gmarket.co.kr/4147475628/still/280?ver=1736225267" alt="상품 이미지"></div>
            <div class="column">TRENCH COAT</div>
            <div class="column">120,500원</div>
          </div>
          <div class="purchase-row">
            <div class="column">2021. 12. 6<br>9775170</div>
            <div class="column"><img src="https://gdimg.gmarket.co.kr/3399955182/still/280?ver=1702826064" alt="상품 이미지"></div>
            <div class="column">블루 코트 드레스 WRAP CARCOAT<br>BALENCIAGA</div>
            <div class="column">130,000원</div>
          </div>
        </div>
</body>
</html>