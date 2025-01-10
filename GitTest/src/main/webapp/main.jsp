<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="search.jsp" %>
	
	<div class="popup-overlay" id="popup">
        <div class="popup-content">
          <div class="popup-header">📢 알려드립니다.</div>
          <div class="popup-body">
            ※ 위생 케어 서비스 ※<br> 
            우리 아이를 위한 완벽한 위생 관리!<br>
            육아육아에서는 전문 케어 업체와 협업하에 소독 및 품질 검수를 통해
            보다 더 위생적인 제품을 받아 볼 수 있도록 도와드리고 있습니다. 
            <br>(제품구매 창에서 확인해주세요😊)
          </div>
          <div class="popup-footer">
            <button class="close-btn" onclick="closePopup()">닫기</button>
          </div>
        </div>
      </div>
   
	 <div id="feed">
            <!-- 포스트 1 -->
            <div class="post">
                <img src="https://marron-glace-paris.com/cdn/shop/files/770106_FACO7_9758_001_100_0000_Light-Gucci-Stroller_2048x.jpg?v=1709606854"/>
                <div class="content">
                    <h3>구찌 GG 모티브 유모차</h3>
                    <p> 1~4살/ 여아/ 상태 : 상  </p>
                    <span class="price">💰 125,000원</span>
                </div>
            </div>
                <!-- 포스트 2 -->
                <div class="post">
                    <img src="https://cafe24.poxo.com/ec01/bambeestore/0jJurf5+JqL2mXn6P+LWO2i2uqhk3jgiA9Vbn7wCx0J0wcOlg6NQMdOTOQ3SfR5yCKojWb9XXfkzt/6tbNsaAg==/_/web/product/big/202410/b631ecd820f5befb8b3849884a75c30e.png"/>
                    <div class="content">
                        <h3>원피스</h3>
                        <p>18개월/ 여아/ 상태 : 상  </p>
                        <span class="price">💰 8,000원</span>
                    </div>
                </div>
                    <!-- 포스트 3 -->
                    <div class="post">
                        <img src="https://us.123rf.com/450wm/siraphol/siraphol1308/siraphol130801919/21868642-%EC%95%84%EA%B8%B0-%EC%8B%A0%EB%B0%9C.jpg"/>
                        <div class="content">
                            <h3>운동화</h3>
                            <p> 2살/ 남아/ 상태 : 하  </p>
                            <span class="price">💰 5,000원</span>
                        </div>
                    </div>
                        <!-- 포스트 4 -->
                        <div class="post">
                            <img src="https://item.elandrs.com/upload/prd/orgimg/526/2012434526_0000001.jpg?w=750&h=&q=100"/>
                            <div class="content">
                                <h3>젖병 소독기</h3>
                                <p> 1~2살/ 무관/ 상태 : 새제품  </p>
                                <span class="price">💰 111,000원</span>
                            </div>
                        </div>
                            <!-- 포스트 5 -->
                            <div class="post">
                                <img src="https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/bf72/c527d2e07266ca3ee510adbe3c552f0fb6486cd455e914ad05bcda0246a9.jpg"/>
                                <div class="content">
                                    <h3>장난감</h3>
                                    <p> 2~4살/ 무관/ 상태 : 중  </p>
                                    <span class="price">💰 10,000원</span>
                                </div>
                            </div>
                        <div class="post">
                <img src="https://marron-glace-paris.com/cdn/shop/files/770106_FACO7_9758_001_100_0000_Light-Gucci-Stroller_2048x.jpg?v=1709606854"/>
                <div class="content">
                    <h3>구찌 GG 모티브 유모차</h3>
                    <p> 1~4살/ 여아/ 상태 : 상  </p>
                    <span class="price">💰 125,000원</span>
                </div>
            </div>
                <!-- 포스트 2 -->
                <div class="post">
                    <img src="https://cafe24.poxo.com/ec01/bambeestore/0jJurf5+JqL2mXn6P+LWO2i2uqhk3jgiA9Vbn7wCx0J0wcOlg6NQMdOTOQ3SfR5yCKojWb9XXfkzt/6tbNsaAg==/_/web/product/big/202410/b631ecd820f5befb8b3849884a75c30e.png"/>
                    <div class="content">
                        <h3>원피스</h3>
                        <p>18개월/ 여아/ 상태 : 상  </p>
                        <span class="price">💰 8,000원</span>
                    </div>
                </div>
                    <!-- 포스트 3 -->
                    <div class="post">
                        <img src="https://us.123rf.com/450wm/siraphol/siraphol1308/siraphol130801919/21868642-%EC%95%84%EA%B8%B0-%EC%8B%A0%EB%B0%9C.jpg"/>
                        <div class="content">
                            <h3>운동화</h3>
                            <p> 2살/ 남아/ 상태 : 하  </p>
                            <span class="price">💰 5,000원</span>
                        </div>
                    </div>
                        <!-- 포스트 4 -->
                        <div class="post">
                            <img src="https://item.elandrs.com/upload/prd/orgimg/526/2012434526_0000001.jpg?w=750&h=&q=100"/>
                            <div class="content">
                                <h3>젖병 소독기</h3>
                                <p> 1~2살/ 무관/ 상태 : 새제품  </p>
                                <span class="price">💰 111,000원</span>
                            </div>
                        </div>
                            <!-- 포스트 5 -->
                            <div class="post">
                                <img src="https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/bf72/c527d2e07266ca3ee510adbe3c552f0fb6486cd455e914ad05bcda0246a9.jpg"/>
                                <div class="content">
                                    <h3>장난감</h3>
                                    <p> 2~4살/ 무관/ 상태 : 중  </p>
                                    <span class="price">💰 10,000원</span>
                                </div>
                            </div>  
                         </div>
                         
		 <script>
        // 페이지 로드 시 팝업 열기
        window.onload = function() {
          const popup = document.getElementById('popup');
          if (popup) {
        	    popup.style.display = 'flex';
        	  } else {
        	    console.error('Popup element not found.');
        	  }
        	};
    
        // 팝업 닫기 기능
        function closePopup() {
          const popup = document.getElementById('popup');
          popup.style.display = 'none';
        }
      </script>
</body>
</html>