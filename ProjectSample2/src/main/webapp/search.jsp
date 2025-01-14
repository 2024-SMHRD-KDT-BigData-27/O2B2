<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>

  <link href="${pageContext.request.contextPath}/css/search.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@include file="category.jsp"%>
	<div class="filter-container">
        <form action="#" method="get">
            <h3>성별</h3>
            <div class="checkbox-group">
                <label><input type="checkbox" name="gender" value="male"> 남아</label>
                <label><input type="checkbox" name="gender" value="female"> 여아</label>
                <label><input type="checkbox" name="gender" value="all"> 무관</label>
            </div>
                        
            <h3>상품상태</h3>
            <!-- <div class="range-group"> -->
            <div class="checkbox-group">
                <label><input type="checkbox" name="new" value="새제품">새제품</label>
                <label><input type="checkbox" name="upper" value="상">상</label>
                <label><input type="checkbox" name="middle" value="중">중</label>
                <label><input type="checkbox" name="lower" value="하">하</label>
            </div>
            
            <h3>연령</h3>
            <div class="range-group">
                <input type="number" name="age_min" min="0" >세~
                <input type="number" name="age_max" min="0">세
            </div>

            <h3>가격</h3>
            <div class="range-group">
                <input type="number" name="price_min"  min="0">만원~
                <input type="number" name="price_max"  min="0">만원
            </div>

            <button type="submit" class="search-button">검색</button>
        </form>
    </div>
</body>
</html>