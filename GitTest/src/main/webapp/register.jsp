<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	
    var pop = window.open("popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
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
		<table class="table" width="650" align="center">
			<tr>
				<th width="400" height="50" align="center" colspan="2">
					<h2>회원가입</h2>
				</th>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">아이디</td>
				<td><input name="id" type="text1"></td>
			</tr>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">비밀번호</td>
				<td><input name="pw" class="password" type="password" maxlength="10"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">비밀번호확인</td>
				<td><input class="password" type="password2" maxlength="10"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">이름</td>
				<td><input name="name" type="text1" maxlength="10"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
					<td>주소</td>
					<td>
						<h>우편번호</h><br>
					    <input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="text" id="zipNo" name="zipNo" readonly style="width:100px">
						<input type="button"  value="주소검색" onclick="goPopup();"><br>
						<h>도로명주소</h>
						<input type="text" id="roadAddrPart1" name="ad" style="width:85%"><br>
						<h>상세주소</h><br>
						<input type="text" id="addrDetail" name="ad-detail" style="width:40%" value="">
						<input type="text" id="roadAddrPart2"  style="width:40%" value="">
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">휴대전화</td>
				<td><input name="ph" id="ph" type="text1" maxlength="10"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">이메일</td>
				<td><input name="email" id="eamil" type="text1" maxlength="10"></td>
			</tr>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left" style="width: 130px;">아이 성별</td>
				<td>남<input type="radio" name="gender" value="man"> 여<input
					type="radio" name="gender" value="woman">
				</td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">아이 나이</td>
				<td><input id="child_age" type="number" name="age_max" min="0">살</td>
			</tr>
			<tr>
				<td><input type="submit" value="회원가입"></td>
			</tr>
			

		</table>
	</form>
</body>
</body>
</html>