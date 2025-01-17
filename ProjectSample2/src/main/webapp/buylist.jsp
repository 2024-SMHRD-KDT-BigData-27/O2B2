<%@page import="java.util.ArrayList"%>
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
	<% 
	userDTO info1 = (userDTO)session.getAttribute("info");
	ProductDAO dao = new ProductDAO();
	ArrayList<ProductDTO> list = new ArrayList<>(); // 제네릭 타입 명시
	list.add(new ProductDTO());
	ProductDTO product = list.get(0); // 안전하게 사용 가능

	%>
	<h2 class="page-title">구매내역</h2>
        <div class="purchase-container">
          <!-- 헤더 행 -->
          <div class="purchase-header">
            <div class="column">구매날짜</div>
            <div class="column">IMAGE</div>
            <div class="column">ITEM</div>
            <div class="column">PRICE</div>
          </div>
           <!-- 데이터 행 -->
           <div class="purchase-row">
    <% 
        for (ProductDTO product1 : list) {
    %>
        <div class="column">2021. 12. 6</div>
        <div class="column"><img src="<%= product1.getPROD_IMG() %>" alt="상품 이미지"></div>
        <div class="column"><%= product1.getPROD_NAME() %></div>
        <div class="column"><%= product1.getPROD_PRICE() %>원</div>
    <% 
        } 
    %>
</div>

        </div>
</body>
</html>