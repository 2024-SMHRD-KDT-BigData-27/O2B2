<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script language="javascript">
	// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
	//document.domain = "abc.go.kr";

	function goPopup() {

		var pop = window.open("popup/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

	}
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.zipNo.value = zipNo;
	}
</script>

<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/register.css"
	rel="stylesheet" type="text/css">
</head>
<body style="overflow: scroll;">
	<%@include file="category.jsp"%>

	<form name="form" id="form" action="JoinService">
		<div class="table-form" align="center">
			<table class="table" width="650" align="center">
				<!-- 			<tr>
				<th width="400" height="50" align="center" colspan="2">
					<h2>회원가입</h2>
				</th>
			</tr> -->
				<tr height="50">
					<td align="left">아이디</td>
					<td><input class="register-text" name="id" type="text"></td>
				</tr>
				<tr height="50">
					<td align="left">비밀번호</td>
					<td><input name="pw" class="register-text" type="password"
						maxlength="10"></td>
				</tr>
				<tr height="50">
					<td align="left">비밀번호확인</td>
					<td><input class="register-text" type="password"
						maxlength="10"></td>

				</tr>
				<tr height="50">
					<td align="left">이름</td>
					<td><input class="register-text" name="name" type="text"
						maxlength="10"></td>
				</tr>
				<tr height="50">
					<td>주소</td>
					<td>
						<p>우편번호</p> <input class="register-text" type="hidden"
						id="confmKey" name="confmKey" value=""> <input
						class="register-text" type="text" id="zipNo" name="zipNo" readonly
						style="width: 100px"> <input type="button" value="주소검색"
						onclick="goPopup();"><br>
						<p>도로명주소</p> <input class="register-text" type="text"
						id="roadAddrPart1" name="ad" style="width: 85%"><br>
						<p>상세주소</p> <input class="register-text" type="text"
						id="addrDetail" name="ad-detail" style="width: 40%" value="">
						<input class="register-text" type="text" id="roadAddrPart2"
						style="width: 40%" value="">
				</tr>
				<tr height="50">
					<td align="left">휴대전화</td>
					<td><input class="register-text" name="ph" id="ph" type="text"
						maxlength="10"></td>
				</tr>
				<tr height="50">
					<td align="left">이메일</td>
					<td><input class="register-text" name="email" id="eamil"
						type="text" maxlength="10"></td>
				</tr>
			</table>
		</div>

		<span style="width: 670px;">자녀 정보</span>
		<!-- 		<div class="table-form">
			<table class="table" width="650" align="center">

				<tr height="50">
					<td align="left" style="width: 130px;">아이 성별</td>
					<td>남<input type="radio" name="gender" value="man"> 여<input
						type="radio" name="gender" value="woman">
					</td>
				</tr>
				<tr height="50">
					<td align="left">아이 나이</td>
					<td><input class="register-text" id="child_age" type="number"
						name="age_max" min="0">살</td>
				</tr>
			</table>
		</div>
		<input class="register_btn" type="submit" value="회원가입"> -->
		<h2>자녀 정보</h2>
		<div id="child-container">
			<table id="child-entry" class="table table-form" width="650"
				align="center">
				<tr height="50">
					<td align="left" style="width: 130px;">아이 성별</td>
					<td>남<input type="radio" name="gender1" value="man"> 여<input
						type="radio" name="gender1" value="woman">
					</td>
				</tr>
				<tr height="50">
					<td align="left">아이 나이</td>
					<td><input class="register-text" id="child_age1" type="number"
						name="age1" min="0"> 살</td>
				</tr>
				<tr>
					<td><button type="button" onclick="addChild();"
							class="add-button">+</button></td>
				</tr>
			</table>
		</div>
	</form>
	<script>
	function addChild() {
	    const container = document.getElementById('child-container');
	    const childCount = container.getElementsByTagName('table').length + 1;

	    const childTable = document.createElement('table');
	    childTable.width = "650";
	    childTable.align = "center";
	    childTable.classList.add('table');
	    childTable.classList.add('table-form');

	    childTable.innerHTML = `
	        <tr height="50">
	            <td align="left" style="width: 130px;">아이 성별</td>
	            <td>남<input type="radio" name="gender${childCount}" value="man"> 여<input
	                type="radio" name="gender${childCount}" value="woman">
	            </td>
	        </tr>
	        <tr height="50">
	            <td align="left">아이 나이</td>
	            <td><input class="register-text" id="child_age${childCount}" type="number"
	                name="age${childCount}" min="0"> 살</td>
	        </tr>
	        <tr>
	            <td><button type="button" class="remove-button" onclick="removeChild(this)">-</button></td>
	        </tr>
	    `;
	    container.appendChild(childTable);
	}

        function removeChild(button) {
            const childTable = button.closest('table');  // 버튼이 속한 테이블을 찾음
            if (childTable) {
                childTable.remove();  // 테이블을 삭제
            }
        }

    </script>
</body>
</body>
</html>