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
		    <div class="banner-container">
        <img class="banner-image"
            src="https://appservice-img.s3.ap-northeast-2.amazonaws.com/story/seoulventures31/ko/detail/12727_top-view-postpartum-box-still-life.jpg"
            alt="Pinkbebe 배너 이미지">
        <div class="banner-text">
            <h2>PINKBEBE와 함께 특별한 순간을 만들어보세요!</h2>
            <p><strong>우리 아이를 위한 최고의 선택, PINKBEBE! 지금 다양한 상품을 확인해보세요.</strong></p>
        </div>
    </div>
	        <nav class="menu">
                <div class="dropdown">
                <button class="dropdown-button">
                <img src="./img/menu.png" width="20px" height="20px"></button>
                <div class="dropdown-content" id="total">
                		<a href="main.jsp?category=상의">상의</a>
                        <a href="#">하의</a>
                        <a href="#">상/하의 세트</a>
                        <a href="#">실내복</a>
                        <a href="#">바디수트</a>
                        <br>
                        <a href="main.jsp?category=이불">이불</a>
                        <a href="main.jsp?category=베개">베개</a>
                        <a href="main.jsp?category=쿠션">쿠션</a>
                        <a href="main.jsp?category=러그">러그</a>
                        <a href="main.jsp?category=담요">담요</a>
                        <br>
                        <a href="main.jsp?category=운동화">운동화</a>
                        <a href="main.jsp?category=샌들">샌들</a>
                        <a href="main.jsp?category=모자">모자</a>
                        <a href="main.jsp?category=가방">가방</a>
                        <a href="main.jsp?category=양말">양말</a>
                        <a href="main.jsp?category=장갑">장갑</a>
                        <br>
                        <a href="main.jsp?category=유모차">유모차</a>
                        <a href="main.jsp?category=카시트">카시트</a>
                        <a href="main.jsp?category=아기의자">아기의자</a>
                        <a href="main.jsp?category=보행기">보행기</a>
                        <a href="main.jsp?category=헬맷">헬멧</a>
          	</div>
          	</div>
            <a href="Commendation" class="dropdown">나만의 상품 💗</a>
           
            <div class="dropdown">
                <button class="dropdown-button">여아의류</button>
                <div class="dropdown-content">
                    <a href="main.jsp?category=상의&gender=W">상의</a>
                    <a href="main.jsp?category=하의&gender=W">하의</a>
                    <a href="main.jsp?category=상/하의 세트&gender=W">상/하의 세트</a>
                    <a href="main.jsp?category=실내복&gender=W">실내복</a>
                    <a href="main.jsp?category=바디수트&gender=W">바디수트</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">남아의류</button>
                <div class="dropdown-content">
                    <a href="main.jsp?category=상의&gender=M">상의</a>
                    <a href="main.jsp?category=하의&gender=M">하의</a>
                    <a href="main.jsp?category=상/하의 세트&gender=M">상/하의 세트</a>
                    <a href="main.jsp?category=실내복&gender=M">실내복</a>
                    <a href="main.jsp?category=바디수트&gender=M">바디수트</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">유아침구</button>
                <div class="dropdown-content">
                    <a href="main.jsp?category=이불">이불</a>
                    <a href="main.jsp?category=베개">베개</a>
                    <a href="main.jsp?category=쿠션">쿠션</a>
                    <a href="main.jsp?category=러그">러그</a>
                    <a href="main.jsp?category=담요">담요</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">신발/잡화</button>
                <div class="dropdown-content">
                    <a href="main.jsp?category=운동화">운동화</a>
                    <a href="main.jsp?category=샌들">샌들</a>
                    <a href="main.jsp?category=모자">모자</a>
                    <a href="main.jsp?category=가방">가방</a>
                    <a href="main.jsp?category=양말">양말</a>
                    <a href="main.jsp?category=장갑">장갑</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropdown-button">안전용품</button>
                <div class="dropdown-content">
                    <a href="main.jsp?category=유모차">유모차</a>
                    <a href="main.jsp?category=카시트">카시트</a>
                    <a href="main.jsp?category=아기의자">아기의자</a>
                    <a href="main.jsp?category=보행기">보행기</a>
                    <a href="main.jsp?category=헬맷">헬멧</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="main.jsp?category=놀이용품"><button class="dropdown-button">놀이용품</button></a>
            </div>
            <div class="dropdown">
                <a href="main.jsp?category=도서"><button class="dropdown-button">도서</button></a>
            </div>
            <a href="board.jsp">게시판</a>
        </nav>
        <hr class="line">
</body>
</html>