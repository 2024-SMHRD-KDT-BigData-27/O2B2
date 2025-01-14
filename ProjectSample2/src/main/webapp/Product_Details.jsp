<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_Details</title>
<link href="${pageContext.request.contextPath}/css/Product_Details.css" rel="stylesheet" type="text/css">

</head>
<body>
	<%@include file="category.jsp" %>

	<div class="container">
        <!-- 상품 이미지 및 기본 정보 -->
        <div class="product" style="position: relative;"> <!-- position 추가 -->
            <div class="product-image">
                <img src="stroller.jpg" alt="유모차 이미지" style="max-width: 300px; border-radius: 8px;">
            </div>
            <div class="product-info">
                <h2 class="product-title">이태리제 최고급 명품 럭셔리 디럭스 유모차 잉글레시나</h2>
                <p class="price">49,000 원</p>
                <ul>
                    <li><strong>배송비 : </strong> 무료배송</li>
                </ul>
                <div class="product-button">
                   <a href="#" class="btn1"><button>구매하기</button></a>
                   <a href="#" class="btn2"><button>찜❤</button></a>
                </div>
            </div>
        </div>
        
            <!-- 상세 내용 -->
        <div class="details">
            <h3 class="detail-comment">상세 내용</h3>
            <p>구매시기: 2021년 5월</p>
            <p>실사용기간: 5개월</p>
            <p>상품상태: 상 </p>
            <p>상품후기: 손잡이 길이가 조절이 가능해서 손목에 무리가 덜 갑니다.</p>
            <p>성별: 무관 </p>
            <p>나이: 1-2살</p>
        </div>
        
         <!-- 댓글 입력 및 출력 -->
        <div class="comment-section">
            <h3 class="comment">💬 댓글</h3>
            <form action="addComment" method="post">
                <textarea name="comment" placeholder="댓글을 입력하세요..." required></textarea>
                <button type="submit" class="btn1">댓글 작성</button>
            </form>
            <div class="comment-list">
                <p><strong>준원맘:</strong> 3kg 여자아이도 가능할까요? ^^*</p>
                <p>↳ <strong>가영맘:</strong> 네! 가능합니다 ~ ^^ ❤️</p>
            </div>
        </div>
    </div>
</body>
</html>