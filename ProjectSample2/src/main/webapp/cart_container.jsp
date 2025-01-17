<%@page import="java.util.ArrayList"%>
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
	<%
	userDTO info2 = (userDTO) session.getAttribute("info");
	CartDAO dao = new CartDAO();
	ArrayList<CartDTO> list = dao.cart_list(info2.getID());
	%>
	<%@include file="category.jsp"%>
	<div class="cart-container">

		<h1>장바구니</h1>
		<form action="cleandelivery.jsp">
		<table class="cart-table">
			<thead>
				<tr>
					<th></th>
					<th>제품 이미지</th>
					<th>이름</th>
					<th>금액</th>
					<th>선택</th>
				</tr>
			</thead>
			<tbody>
				<%
				ProductDAO pro_dao = new ProductDAO();
				ProductDTO pro = new ProductDTO();

				for (CartDTO item : list) {
					pro = pro_dao.proDetail(Double.toString(item.getPRODUCT_ID()));
					
				%>

				<tr>
					
						<td><input type="checkbox" name="p_id" value="<%= item.getPRODUCT_ID() %>"></td>
						<td onclick="location.href='Product_Details.jsp?p_id=<%=Double.toString(item.getPRODUCT_ID())%>'"><img src="<%=pro.getPROD_IMG()%>" alt="상품 이미지 1"
							class="product-image"></td>
						<td onclick="location.href='Product_Details.jsp?p_id=<%=Double.toString(item.getPRODUCT_ID())%>'"><%=pro.getPROD_NAME()%></td>
						<td><%=pro.getPROD_PRICE()%>원</td>
					<td>
						<a href="DeleteCart?cart_id=<%= item.getCart_ID() %>"><button class="cart-btn">삭제</button></a>
					</td>
				</tr>
					<%
					}
					%>
			</tbody>
		</table>
		<div class="order-button-container">
			<input type="submit" class="order-btn" value="주문하기">
		</div>
		</form>
	</div>

</body>
</html>