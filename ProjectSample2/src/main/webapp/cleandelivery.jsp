<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delivery</title>
<link href="${pageContext.request.contextPath}/css/cleandelivery.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="category.jsp"%>
	<div class="clean-popup-overlay" id="popup">
		<div class="clean-popup-content">
			<div class="clean-popup-header">✔ 구매전 확인해주세요.</div>
			<div class="clean-popup-body">
				<br> 위생 케어 서비스 선택시 전문 업체를 통해 소독 및 검수 후 배송됩니다.<br> <br>
				• 선택시 금액에 따라 추가금 발생할 수 있습니다.<br> • 배송일 3~5일 지연 될 수 있습니다.<br>
				(제품에 따라 금액 및 배송일 변동 가능)<br> <br>
			</div>
			<div class="clean-popup-footer">
				<button class="close-btn" onclick="closePopup()">닫기</button>
			</div>
		</div>
	</div>
	<script>
		// 페이지 로드 시 팝업 열기
		window.onload = function() {
			const popup = document.getElementById('popup');
			popup.style.display = 'flex';
		};

		// 팝업 닫기 기능
		function closePopup() {
			const popup = document.getElementById('popup');
			popup.style.display = 'none';
		}
	</script>

	<table width="650" align="center">
		<tr>
			<th width="400" height="50" align="left" colspan="2">
				<h2>배송지 정보</h2>
			</th>
		</tr>

		<tr bgcolor="whitesmoke" height="50">
			<td align="left" style="width: 130px;">* 배송지 정보</td>
			<td>직접 입력<input type="radio" name="gender" value="man">
				주문자 정보와 동일<input type="radio" name="gender" value="woman">
			</td>
		</tr>

		<tr bgcolor="whitesmoke" height="50">
			<td align="left">* 받으실분</td>
			<td><input class="delevery-text" name="name" type="text"></td>
		</tr>
		<tr bgcolor="whitesmoke" height="50">
			<td align="left">* 주소</td>
			<td><input class="delevery-text" name="ad" type="text"
				maxlength="30"> <input type="submit" value="주소찾기"><br>
				<input class="delevery-text" name="ad-detail" type="text"
				placeholder="상세 주소를 입력하세요"></td>
		</tr>

		<tr bgcolor="whitesmoke" height="50">
			<td align="left">* 휴대폰번호</td>
			<td><input class="delevery-text" name="ph" type="text"
				maxlength="10"></td>
		</tr>
		<tr bgcolor="whitesmoke" height="50">
			<td align="left">전화번호</td>
			<td><input class="delevery-text" name="ph" type="text"
				maxlength="10"></td>
		</tr>
		<tr bgcolor="whitesmoke" height="50">
			<td align="left">배송메모</td>
			<td><textarea cols="45" rows="5"></textarea></td>
		</tr>
	</table>

	<table width="650" align="center">
		<tr>
			<td colspan="2" align="left">
				<div
					style="border: 2px solid #7c7c7c; padding: 20px; background-color: #f9f9f9; border-radius: 3px; background-image: url('./img/clean.png'); /* 배경 이미지 URL */ background-size: cover; /* 배경 이미지가 화면에 꽉 차게 */ background-position: center; /* 이미지 위치를 가운데로 */ background-repeat: no-repeat;">
					<h2 style="color: #4f749b; margin-bottom: 10px; margin-top: 0px;">위생
						케어 서비스</h2>
					<p style="margin-bottom: 15px; font-size: 14px; line-height: 1.5;">
						깨끗하고 안전한 상품을 위해 <strong>위생 케어 서비스</strong>를 추가해보세요!<br> 전문적인
						케어로 더욱 안심하고 사용할 수 있습니다.
					</p>
					<p style="margin-bottom: 20px;">
						서비스 추가 시 주문금액에 따라 추가 비용이 발생합니다.<br> <strong>총 주문 금액에
							자동 반영됩니다.</strong>
					</p>
					<button onclick="addCareService()"
						style="padding: 10px 20px; background-color: #2c64a0; color: white; border: none; border-radius: 5px; font-size: 14px; cursor: pointer;">
						케어서비스 추가하기</button>
				</div>
			</td>
		</tr>
	</table>

	<script>
		function addCareService() {
			alert('위생 케어 서비스가 추가되었습니다!');
		}
	</script>

	<table width="650" align="center">
		<tr>
			<th width="400" height="50" align="left" colspan="2">
				<h2>결제정보</h2>
			</th>
		</tr>
		<tr bgcolor="whitesmoke" height="50">
			<td align="left">
				<h3>
					주문금액<br>
					<br>+케어서비스
				</h3>
			</td>
		</tr>
		<tr bgcolor="whitesmoke" height="50">
			<td align="right">
				<h2>총금액:</h2>
			</td>
		</tr>

	</table>
</body>
</html>