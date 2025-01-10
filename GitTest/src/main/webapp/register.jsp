<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css">
</head>
<body style="overflow: scroll;">
	<%@include file="category.jsp"%>

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
			<td><input class="password" type="password" maxlength="10"></td>
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
			<td align="left">주소</td>
			<td><input name="ad" type="text1" maxlength="30"> <input
				type="submit" value="주소찾기"><br> <input name="ad-detail"
				type="text1" placeholder="상세 주소를 입력하세요"></td>
		</tr>
		<tr bgcolor="whitesmoke" height="50">
			<td align="left">휴대전화</td>
			<td><input id="ph" type="text1" maxlength="10"></td>
		</tr>
		<tr bgcolor="whitesmoke" height="50">
			<td align="left">이메일</td>
			<td><input id="eamil" type="text1" maxlength="10"></td>
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
	</table>
</body>
</body>
</html>