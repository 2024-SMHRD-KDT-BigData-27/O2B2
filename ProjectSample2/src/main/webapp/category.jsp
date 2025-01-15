<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>category</title>
<link href="${pageContext.request.contextPath}/css/category.css" rel="stylesheet" type="text/css">
</head>
<body>
		<%@include file="header.jsp"%>
	        <nav class="menu">
                <div class="dropdown">
                <button class="dropdown-button">
                <img src="./img/menu.png" width="20px" height="20px"></button>
                <div class="dropdown-content" id="total">
                		<a href="#">상의</a>
                        <a href="#">하의</a>
                        <a href="#">상/하의 세트</a>
                        <a href="#">실내복</a>
                        <a href="#">바디수트</a>
                        <br>
                        <a href="#">이불</a>
                        <a href="#">베개</a>
                        <a href="#">쿠션</a>
                        <a href="#">러그</a>
                        <a href="#">담요</a>
                        <br>
                        <a href="#">운동화</a>
                        <a href="#">샌들</a>
                        <a href="#">모자</a>
                        <a href="#">가방</a>
                        <a href="#">양말</a>
                        <a href="#">장갑</a>
                        <br>
                        <a href="#">유모차</a>
                        <a href="#">카시트</a>
                        <a href="#">아기의자</a>
                        <a href="#">보행기</a>
                        <a href="#">헬멧</a>
          	</div>
          	</div>
            <a href="#" class="dropdown">나만의 상품 💗</a>
           
            <div class="dropdown">
                <button class="dropdown-button">유아의류</button>
                <div class="dropdown-content">
                    <a href="#">상의</a>
                    <a href="#">하의</a>
                    <a href="#">상/하의 세트</a>
                    <a href="#">실내복</a>
                    <a href="#">바디수트</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">유아침구</button>
                <div class="dropdown-content">
                    <a href="#">이불</a>
                    <a href="#">베개</a>
                    <a href="#">쿠션</a>
                    <a href="#">러그</a>
                    <a href="#">담요</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">신발/잡화</button>
                <div class="dropdown-content">
                    <a href="#">운동화</a>
                    <a href="#">샌들</a>
                    <a href="#">모자</a>
                    <a href="#">가방</a>
                    <a href="#">양말</a>
                    <a href="#">장갑</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">안전용품</button>
                <div class="dropdown-content">
                    <a href="#">유모차</a>
                    <a href="#">카시트</a>
                    <a href="#">아기의자</a>
                    <a href="#">보행기</a>
                    <a href="#">헬멧</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">놀이용품</button>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">도서</button>
            </div>
            <a href="#">머하지 ?</a>
            <a href="board.jsp">게시판</a>
        </nav>
        <hr class="line">
</body>
</html>