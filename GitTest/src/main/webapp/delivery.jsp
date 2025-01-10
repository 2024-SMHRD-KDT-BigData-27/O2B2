<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delivery</title>
<link href="${pageContext.request.contextPath}/css/delivery.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="category.jsp"%>
	
		<div class="clean-popup-overlay" id="popup">
        	<div class="clean-popup-content">
           	 	<div class="clean-popup-header">✔ 구매전 확인해주세요.</div>
            <div class="clean-popup-body">
                <br>
                위생 케어 서비스 선택시 전문 업체를 통해 소독 및 검수 후 배송됩니다.<br>
                <br>
                • 선택시 2,000~5,000원 추가금 발생할 수 있습니다.<br>
                • 배송일 3~5일 지연 될 수 있습니다.<br>
                　(제품에 따라 금액 및 배송일 변동 가능)<br>
                <br>
            </div>
            <div class="clean-popup-footer">
                <button class="buy-btn" onclick="closePopup()"><a href="#">구매하기</a></button>
                <button class="clean-btn" onclick="closePopup()"><a href="#" class="">위생서비스</a></button>
                
                </div>
            </div>
        </div>
    <script>
        // 페이지 로드 시 팝업 열기
        window.onload = function () {
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
            <td>
                직접 입력<input type="radio" name="gender" value="man">
                주문자 정보와 동일<input type="radio" name="gender" value="woman">
            </td>
        </tr>

        <tr bgcolor="whitesmoke" height="50">
            <td align="left">* 받으실분</td>
            <td><input name="name" type="text1"></td>
        </tr>
        <tr bgcolor="whitesmoke" height="50">
            <td align="left">* 주소</td>
            <td>
                <input name="ad" type="text1" maxlength="30">
                <input type="submit" value="주소찾기"><br>
                <input name="ad-detail" type="text1" placeholder="상세 주소를 입력하세요">
            </td>
        </tr>

        <tr bgcolor="whitesmoke" height="50">
            <td align="left">* 휴대폰번호</td>
            <td><input name="ph" type="text1" maxlength="10"></td>
        </tr>
        <tr bgcolor="whitesmoke" height="50">
            <td align="left">　전화번호</td>
            <td><input name="ph" type="text1" maxlength="10"></td>
        </tr>
        <tr bgcolor="whitesmoke" height="50">
            <td align="left">　배송메모</td>
            <td><textarea cols="45" rows="5"></textarea></td>
        </tr>
        </table>
</body>
</html>