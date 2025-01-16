<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="search.jsp"%>
	<% ArrayList<ProductDTO> list = (ArrayList)session.getAttribute("filter");%>
	<div id="feed">
		<!-- 포스트 1 -->
		<%
		for (ProductDTO pro : list) {
		%>
		<a href="Product_Details.jsp?p_id=<%=Double.toString(pro.getPROD_ID())%>">
			<div class="post">
				<img src="<%=pro.getPROD_IMG()%>" />
				<div class="content">
					<h3><%=pro.getPROD_NAME()%></h3>
					<p><%=pro.getMIN_AGE()%>~<%=pro.getMAX_AGE()%>개월/ 성별 :
						<%
					if (pro.getTO_GENDER().equals("M")) {
						out.print("남아");
					} else if (pro.getTO_GENDER().equals("W")) {
						out.print("여아");
					} else {
						out.print("무관");
					}
					%>
						/ 상태 :
						<%=pro.getPROD_STATE()%></p>
					<span class="price"> <%=pro.getPROD_PRICE()%>원
					</span>
				</div>
			</div>
		</a>
		<%
		}
		%>
	</div>
</body>
</html>