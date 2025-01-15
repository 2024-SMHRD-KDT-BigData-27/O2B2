<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wishlist</title>
<link href="${pageContext.request.contextPath}/css/wishlist.css" rel="stylesheet" type="text/css">

</head>
<body>
<% 
userDTO info1 = (userDTO) session.getAttribute("info");
WishDAO dao = new WishDAO();
ArrayList<WishDTO> list = dao.wishList(info1.getID());

%>
	<%@include file="category.jsp" %>
<h2 class="page-title">❤️ 찜 목록</h2>
        <div class="wishlist-container">
          <!-- 상품 카드 -->
          <% 
        	ProductDAO pro_dao = new ProductDAO(); 
          	ProductDTO pro = new ProductDTO();
          	
          	for(WishDTO item : list){
          		pro = pro_dao.proDetail(Double.toString(item.getPRODUCT_ID()));
          %>
          <a href="Product_Details.jsp?p_id=<%= Double.toString(item.getPRODUCT_ID())%>">
          <div class="wishlist-item">
            <img src="<%= pro.getPROD_IMG() %>" alt="상품 이미지">
            <h3 class="product-title"><%= pro.getPROD_NAME() %></h3>
            <p class="product-price"><%= pro.getPROD_PRICE() %>원</p>
            <p class="product-date"><%= item.getCREATE_DT() %> ❤️</p>
          </div>
          </a>
          <% } %>
        </div>
</body>
</html>