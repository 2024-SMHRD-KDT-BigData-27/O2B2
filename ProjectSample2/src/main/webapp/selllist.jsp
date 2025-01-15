<%@page import="java.util.ArrayList"%>
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
	<% 
	userDTO info1 = (userDTO)session.getAttribute("info");
	ProductDAO dao = new ProductDAO();
	ArrayList<ProductDTO> list = (ArrayList)dao.proList(info1.getID());
	%>
 <h2 class="page-title">판매내역</h2>
        <div class="purchase-container">
          <!-- 헤더 행 -->
          <div class="purchase-header">
            <div class="column">판매상태</div>
            <div class="column">IMAGE</div>
            <div class="column">ITEM</div>
            <div class="column">PRICE</div>
          </div>
          <% for(ProductDTO product : list){ %>
          	<div class="purchase-row">
				<% if(product.getSOLD_YN().equals("N")){ %>          	
          			<div class="column">판매중</div>
          		<% } else{ %>
          			<div class="column">판매완료</div>
          		<% }%>
          		<div class="column"><img src="<%= product.getPROD_IMG() %>" alt="상품 이미지"></div>
          		<div class="column"><%= product.getPROD_NAME() %></div>
          		<div class="column"><%= product.getPROD_PRICE() %>원</div>
          	</div>
          <% } %>
          
        </div>
</body>
</html>