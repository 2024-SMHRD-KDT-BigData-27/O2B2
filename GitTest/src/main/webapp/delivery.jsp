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
                주무자 정보와 동일<input type="radio" name="gender" value="woman">
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
        </tr>
</body>
</html>