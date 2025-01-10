<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<!-- 헤더 시작 -->
		<div class="header-container">
			<h1 class="logo">👶🏻 육아육아</h1>
			<div>
				<input type="text" class="search-bar" placeholder="Search">
				<button class="search">검색 🔍</button>
			</div>

			<!-- 로그인 상태가 아닐 때 나오는 페이지 -->
			<div>
				<button class="login-button" id="login-button">로그인/회원가입</button>
			</div>

			<!-- 로그인된 상태일 때 나오는 페이지 -->
			<div class="user-options">
				<a href="#">🔒 맘톡톡</a> <a href="#">💌 찜 목록</a>
				<div class="dropdown">
					<button class="dropdown-button">마이페이지</button>
					<div class="dropdown-content">
						<a href="#">회원정보 변경</a> <a href="#">구매 내역</a> <a href="#">판매
							내역</a> <a href="#">찜 목록 페이지</a> <a href="#">제품 등록 페이지</a>
					</div>
				</div>
				<button class="logout-button">로그아웃</button>
			</div>

		</div>

		<div id="login-modal" class="modal">
			<div class="modal-content">
				<span class="close" id="close" onclick="closeModal()">&times;</span>
				<h2>로그인</h2>
				<form class="login-form">
					<label for="username">아이디</label> <br> 
					<input type="text" id="username" name="username" placeholder="Name"> <br>
					<label for="password">비밀번호</label> <br>
					<input type="password" id="password" name="password" placeholder="Password"> <br>
					<button type="submit" id="login-submit" class=" -submit">로그인</button>
				</form>
				<a href="register.jsp" id="register-submit" class="register-link">회원가입</a>
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
        document.getElementById("login-submit").addEventListener((click), () => {
            document.getElementById("main.html").style.display = "none";
        })
        document.getElementById("register-submit").addEventListener((click), ()=>{
            document.getElementById("main.html").style.display = "block";
        })
        
    </script>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<!-- 헤더 시작 -->
		<div class="header-container">
			<h1 class="logo">👶🏻 육아육아</h1>
			<div>
				<input type="text" class="search-bar" placeholder="Search">
				<button class="search">검색 🔍</button>
			</div>

			<!-- 로그인 상태가 아닐 때 나오는 페이지 -->
			<div>
				<button class="login-button" id="login-button">로그인/회원가입</button>
			</div>

			<!-- 로그인된 상태일 때 나오는 페이지 -->
			<div class="user-options">
				<a href="#">🔒 맘톡톡</a> <a href="#">💌 찜 목록</a>
				<div class="dropdown">
					<button class="dropdown-button">마이페이지</button>
					<div class="dropdown-content">
						<a href="#">회원정보 변경</a> <a href="#">구매 내역</a> <a href="#">판매
							내역</a> <a href="#">찜 목록 페이지</a> <a href="#">제품 등록 페이지</a>
					</div>
				</div>
				<button class="logout-button">로그아웃</button>
			</div>

		</div>

		<div id="login-modal" class="modal">
			<div class="modal-content">
				<span class="close" id="close" onclick="closeModal()">&times;</span>
				<h2>로그인</h2>
				<form class="login-form">
					<label for="username">아이디</label> <br> 
					<input type="text" id="username" name="username" placeholder="Name"> <br>
					<label for="password">비밀번호</label> <br>
					<input type="password" id="password" name="password" placeholder="Password"> <br>
					<button type="submit" id="login-submit" class=" -submit">로그인</button>
				</form>
				<a href="register.jsp" id="register-submit" class="register-link">회원가입</a>
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
        document.getElementById("login-submit").addEventListener((click), () => {
            document.getElementById("main.html").style.display = "none";
        })
        document.getElementById("register-submit").addEventListener((click), ()=>{
            document.getElementById("main.html").style.display = "block";
        })
        
    </script>
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-KDT-BigData-27/O2B2.git
</html>