<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
  <link href="${pageContext.request.contextPath}/css/board.css" rel="stylesheet" type="text/css">

</head>
<body>
<%@include file="category.jsp" %>
<div class="board" align="center">
    <h1>게시판</h1>
    <table class="post-list" align="center">
        <thead>
            <tr>
                <th width="20">번호</th>
                <th width="200">제목</th>
                <th width="50">글쓴이</th>
                <th width="50">시간</th>
                <th width="20">조회수</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td><a href="#">3살 아이가 좋아하는 간식은 무엇인가요~ ^^?</a></td>
                <td>강준원</td>
                <td>2024-12-29</td>
                <td>8</td>
            </tr>
                        <tr>
                <td>2</td>
                <td><a href="#">요즘 유행하는 겨울신발 추천해주세용 ~~** 😍😍</td>
                <td>문가영</td>
                <td>2024-12-30</td>
                <td>5</td>
            </tr>
                        <tr>
                <td>3</td>
                <td><a href="#">저번주 토요일에 아이들과 놀이공원 다녀왔네요 *^^*~ </a></td>
                <td>곽윤철</td>
                <td>2025-01-08</td>
                <td>15</td>
            </tr>
             <tr>
                <td>4</td>
                <td><a href="#">딸이 이유식을 싫어하네요 .. OTL ..</a></td>
                <td>박지우</td>
                <td>2025-01-14</td>
                <td>25</td>
            </tr>
        </tbody>
    </table>
    <div class="page-nav">
        <a href="#" class="prev">이전</a>
        <a href="#" class="page">1</a>
        <a href="#" class="page">2</a>
        <a href="#" class="page">3</a>
        <a href="#" class="page">4</a>
        <a href="#" class="page">5</a>
        
        <a href="#" class="next">다음</a>
    </div>
</div>
</body>
</html>