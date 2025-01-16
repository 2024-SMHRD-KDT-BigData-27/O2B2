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
		    
	<div class="popup-overlay" id="popup" style="display: none;">
		<div class="popup-content">
			<div class="popup-header">📢 알려드립니다.</div>
			<div class="popup-body">
				※ 위생 케어 서비스 ※<br> <br> 우리 아이를 위한 완벽한 위생 관리!<br>
				육아육아에서는 전문 케어 업체와 협업하에 소독 및 품질 검수를 통해 보다 더 위생적인 제품을 받아 볼 수 있도록 <br>도와드리고
				있습니다. <br>(제품구매 창에서 확인해주세요😊)
			</div>
			<hr class="line1">
			<div class="popup-footer">
				<label> <input type="checkbox" id="dontShowToday" /> 오늘 하루
					동안 보지 않기
				</label>


				<button class="close-btn" onclick="closePopup()">닫기</button>
			</div>
		</div>
	</div>
	<script>
		// 팝업 표시 함수
		function showPopup() {
			const popup = document.getElementById('popup');

			// localStorage에서 'hidePopupUntil' 값을 확인
			const hidePopupUntil = localStorage.getItem('hidePopupUntil');
			const now = new Date();

			// 팝업 숨김 기한이 지났거나 설정되지 않았으면 표시
			if (!hidePopupUntil || now > new Date(hidePopupUntil)) {
				popup.style.display = 'flex';
			}
		}

		// 팝업 닫기 함수
		function closePopup() {
			const popup = document.getElementById('popup');
			const dontShowToday = document.getElementById('dontShowToday');

			// "오늘 하루 동안 보지 않기" 체크 여부 확인
			if (dontShowToday.checked) {
				const now = new Date();
				const tomorrow = new Date();
				tomorrow.setDate(now.getDate() + 1);

				// localStorage에 'hidePopupUntil'을 저장
				localStorage.setItem('hidePopupUntil', tomorrow.toISOString());
			}

			// 팝업 숨기기
			popup.style.display = 'none';
		}

		// 페이지 로드 시 팝업 표시
		window.onload = showPopup;
	</script>

	<%
	ProductDAO pro_dao = new ProductDAO();
	
	ArrayList<ProductDTO> list = null;
	
    String select_category = request.getParameter("category");
    String gender = request.getParameter("gender");
    
    if(select_category != null & gender != null){
    	list = pro_dao.proCategoryGender(select_category, gender);    	
    } else if(select_category != null & gender == null){
    	list = pro_dao.proCategory(select_category);
    } else{
		list = pro_dao.proMain();
    }
	%>

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