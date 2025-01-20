<%@ page import="com.project.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link href="${pageContext.request.contextPath}/css/header.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<!-- 헤더 시작 -->

		<div class="header-container">
			<a href="main.jsp"><h1 class="logo">👶🏻 PINKBEBE</h1></a>
			<div>
				<form action="searchByName.jsp">
					<input type="text" class="search-bar" placeholder="Search" name="search">
					<button type="submit" class="search">검색 🔍</button>
				</form>
			</div>
			<div class="user-options">
				<%
				Object info = session.getAttribute("info");
				if (info == null) {
				%>

				<div>
					<button class="login-button" id="login-button">로그인/회원가입</button>
				</div>
				<%
				} else {
				%>

				<a href="calender.jsp">📆마이캘린더</a> <a href="cart_container.jsp">🛒장바구니</a>
				<div class="dropdown">
					<button class="dropdown-button">마이페이지</button>
					<div class="dropdown-content">
						<a href="revise.jsp">회원정보 변경</a> <a href="buylist.jsp">구매 내역</a> <a
							href="selllist.jsp">판매 내역</a> <a href="cart_container.jsp">장바구니</a>
						<a href="wishlist.jsp">찜 목록 페이지</a> <a
							href="Product_Registration.jsp">제품 등록 페이지</a>
					</div>
				</div>
				<a href="LogoutService"><button class="logout-button">로그아웃</button></a>
				<%
				}
				%>
			</div>
		</div>

		<div id="login-modal" class="modal">
			<div class="modal-content">
				<div>
					<span class="close" id="close" onclick="closeModal()">&times;</span>
				</div>
				<h2 class="login-header">로그인</h2>
				<form class="login-form" action="LoginService">
					<div>
						<label for="username" class="login-label">아이디</label> <br> <input
							class="login-input" type="text" id="username" name="id"
							placeholder="  Name">
					</div>
					<div>
						<label for="password" class="login-label">비밀번호</label> <br> <input
							class="login-input" type="password" id="password" name="pw"
							placeholder="  Password">
					</div>
					<button type="submit" id="login-submit" class=" -submit">로그인</button>
					<a href="register.jsp" id="register-submit" class="register-link">회원가입</a>
				</form>

			</div>
		</div>
	</header>
</body>

<script>
        document.getElementById("login-button").addEventListener(('click'), () => {
            document.getElementById("login-modal").style.display = "block";
        })
        document.getElementById("close").addEventListener(('click'), () => {
            document.getElementById("login-modal").style.display = "none";
        })
        document.getElementById("login-submit").addEventListener(('click'), () => {
            document.getElementById("main.html").style.display = "none";
        })
        document.getElementById("register-submit").addEventListener(('click'), ()=>{
            document.getElementById("main.html").style.display = "block";
        })
        
    </script>
</html>