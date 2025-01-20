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

	<h2 class="page-title">구매내역</h2>
        <div class="purchase-container">
          <!-- 헤더 행 -->
          <div class="purchase-header">
            <div class="column">구매날짜</div>
            <div class="column">IMAGE</div>
            <div class="column">ITEM</div>
            <div class="column">PRICE</div>
          </div>
          <%
          userDTO info1 = (userDTO) session.getAttribute("info");
          
          DealDAO dao = new DealDAO();
          ProductDAO pro_dao = new ProductDAO();
          
          ArrayList<DealDTO> list = dao.findList(info1.getID());
          
          for(DealDTO deal : list){
        	  ProductDTO item = pro_dao.proDetail(deal.getPRODUCT_ID());
          %>
        	 <div class="purchase-row">
            <div class="column"><%= deal.getCREATE_DT() %></div>
            <div class="column"><img src="<%= item.getPROD_IMG() %>" alt="상품 이미지"></div>
            <div class="column"><%= item.getPROD_NAME() %></div>
            <div class="column"><%= (long) deal.getDEAL_AMOUNT().doubleValue() %>원</div>
          </div>
        	 
        	  
          <%}%>

</div>

        </div>
</body>
</html>