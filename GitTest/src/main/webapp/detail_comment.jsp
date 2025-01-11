<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail_comment</title>
<link href="${pageContext.request.contextPath}/css/detail_comment.css" rel="stylesheet" type="text/css">
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
                    <li><strong>상품상태:</strong> 사용감 없음</li>
                    <li><strong>배송비:</strong> 무료배송</li>
                </ul>
                <div class="product-button">
                    <button class="btn1">구매하기</button>
                    <button class="btn2">찜</button>
                </div>
            </div>
        </div>

        <!-- 상세 입력 -->
        <div class="details">
            <h3 class="detail-comment">상세 내용 입력</h3>
            <form action="submitDetails" method="post">
                <label for="purchaseDate">구매시기:</label>
                <input type="month" id="purchaseDate" name="purchaseDate" required>

                <br><label for="usagePeriod">실사용 기간 (개월):</label>
                <input type="number" id="usagePeriod" name="usagePeriod" min="1" max="120" required>

                <br><label for="productCondition">상품상태:</label>
                <select id="productCondition" name="productCondition" required>
                    <option value="상">상</option>
                    <option value="중">중</option>
                    <option value="하">하</option>
                </select>

                <br><label for="review">상품후기:</label>
                <textarea id="review" name="review" placeholder="상품 후기를 입력하세요..." rows="4" required></textarea>

                <br><label for="gender">성별:</label>
                <select id="gender" name="gender" required>
                    <option value="남아">남아</option>
                    <option value="여아">여아</option>
                    <option value="무관">무관</option>
                </select>

                <br><label for="age">나이:</label>
                    <input type="number" id="age" name="age" placeholder="예: 3" min="0">

                <br><button type="submit" class="btn1">상세 정보 저장</button>
            </form>
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