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
	<%@include file="search.jsp" %>
	 
	 <div class="container">
                <div class="product">
                    <div class="product-image">
                        <img src="./img/free-icon-menu-1828859.png" alt="유모차 이미지" width="100px" height="100px">
                    </div>

                    <div>
                        <h2 class="product-title">이태리제 최고급 명품 럭셔리 디럭스 유모차 잉글레시나</h2>
                        <h2 class="price">49,000원</h2>
                        <span class="product-status">• 제품상태</span><span class="product-status">　　새제품</span><br>
                        <span class="delivery-fee">• 배송비 </span><span class="delivery-fee">　　3000원</span>
                        
                        <div class="product-button">
                            <button><a href="delivery.jsp" class="btn1">구매하기</button></a>
                            <button><a href="#" class="btn2">찜❤</button></a>
                        </div>
                    </div>
                </div>
                </div>


                <h2 class="detail-comment">상세 내용</h2>

<!--             <div class="details">
                <div>
                    <p>구매시기:</p>
                    <p>실사용기간:</p>
                    <p>상품상태:</p>
                    <p>상품후기:</p>
                    <p>*성별:</p>
                    <p>*나이:</p>
                </div>
            </div> -->
            
            <div class="details">
  <div>
    <label for="purchase-date">구매시기:</label>
    <input type="text" id="purchase-date" name="purchase-date" placeholder="예: 3개월">
    
    <br><label for="usage-duration">실사용기간:</label>
    <input type="text" id="usage-duration" name="usage-duration" placeholder="예: 6개월">
    
    <br><label for="product-condition">상품상태:</label>
    <input type="text" id="product-condition" name="product-condition" placeholder="예: 새상품/중고">
    
    <br><label for="product-review">상품후기:</label>
    <textarea id="product-review" name="product-review" placeholder="상품 후기를 작성해주세요"></textarea>
    
    <br><label for="gender">*성별:</label>
    <select id="gender" name="gender">
      <option value="">선택</option>
      <option value="male">남아</option>
      <option value="female">여아</option>
      <option value="neutral">무관</option>
    </select>
    
    <br><label for="age">*나이:</label>
    <input type="number" id="age" name="age" placeholder="예: 3" min="0">
  </div>
</div>
            
            
            
            <h2 class="comment">댓글</h2>
                <div class="comment-section">
                    <div>
                        <strong>준원맘:</strong> 3kg 여자아이도 가능할까요? ^^*?
                        <div class="comment-reply">가영맘: 네네 가능합니다~ ^^❤️</div>
                    </div>
                </div>
            </div>
</body>
</html>