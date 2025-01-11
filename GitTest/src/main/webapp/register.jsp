<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/register.css"
	rel="stylesheet" type="text/css">
</head>
<body style="overflow: scroll;">
	<%@include file="category.jsp"%>

	<form action="JoinService">
		<table class="table" width="650" align="center">
			<tr>
				<th width="400" height="50" align="center" colspan="2">
					<h2>회원가입</h2>
				</th>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">아이디</td>
				<td><input class="register-text" name="id" type="text"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">비밀번호</td>
				<td><input name="pw" class="class="register-text" type="password" maxlength="10"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">비밀번호확인</td>
				<td><input class="class="register-text" type="password" maxlength="10"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">이름</td>
				<td><input name="name" class="register-text" type="text" maxlength="10"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">주소</td>
				<td><input name="ad" class="register-text" type="text" maxlength="30"> <input
					type="submit" value="주소찾기"><br> <input
					name="ad-detail" class="register-text" type="text" placeholder="상세 주소를 입력하세요"></td>
			</tr>
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">휴대전화</td>
				<td><input name="ph" id="ph" class="register-text" type="text" maxlength="10"></td>
			</tr> 
			<tr bgcolor="whitesmoke" height="50">
				<td align="left">이메일</td>
				<td><input name="email" class="register-text" id="eamil" type="text" maxlength="10"></td>
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