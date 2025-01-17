<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/buy.css"rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="category.jsp" %>
	
	<div class="payment-pop">
	<div class="payment-popup-container">
    <div class="payment-popup-header">결제 완료</div>
    <div class="checkmark-wrapper">
        <div class="checkmark">✔</div>
    </div>
    <div class="payment-popup-message">구매가 완료되었습니다.</div>
    <a href="SoldOutProductService?p_id=<%= request.getParameter("p_id") %>&totalPrice=<%= request.getParameter("totalPrice")%>"><button class="confirm-button" onclick="redirect()">확인</button></a>
</div>
</div>

<script>
    function redirect() {
        window.location.href = "https://example.com"; // 이동할 URL 설정
    }
</script>
	
</body>
</html>