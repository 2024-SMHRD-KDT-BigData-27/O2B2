<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_Details</title>
<link href="${pageContext.request.contextPath}/css/Product_Details.css"
	rel="stylesheet" type="text/css">

</head>
<body>
	<%@include file="category.jsp"%>
	<%
	ProductDAO dao = new ProductDAO();
	ProductDTO detail = (ProductDTO) dao.proDetail(request.getParameter("p_id"));
	System.out.print(detail);
	%>


	<div class="container">
		<!-- 상품 이미지 및 기본 정보 -->
		<div class="product" style="position: relative;">
			<!-- position 추가 -->
			<div class="product-image">
				<img src="<%=detail.getPROD_IMG()%>" alt="유모차 이미지"
					style="max-width: 300px; border-radius: 8px;">
			</div>
			<div class="product-info">
				<h2 class="product-title"><%=detail.getPROD_NAME()%></h2>

				<b class="price"><%=detail.getPROD_PRICE()%>원</b>

				<hr class="detail_line">
				<br>
				<p>
					배송비 :
					<%=detail.getPROD_DELIVERY_FEE()%>원
				</p>
				<p>
					상품상태:
					<%=detail.getPROD_STATE()%></p>
				<br>
				<p>* 궁금하신 점은 상세내용 아래에 댓글을 이용해 남겨보세요 ~ 💌</p>

				<div class="product-button">
					<a href="#" class="btn1"><button>🛒장바구니</button></a> <a
						href="AddWishListService?p_id=<%= request.getParameter("p_id") %>" class="btn2"><button>❤찜</button></a> <a
						href="cleandelivery.jsp?p_id=<%= request.getParameter("p_id") %>" class="btn3"><button>구매하기</button></a>
				</div>
			</div>
		</div>

		<!-- 상세 내용 -->
		<div class="details">
			<h3 class="detail-comment">상세 내용</h3>
			<p>
				구매시기:
				<%=detail.getBUY_DATE()%></p>
			<p>
				실사용기간:
				<%=detail.getUSE_PERIOD()%>개월
			</p>
			<p>
				상품상태:
				<%=detail.getPROD_STATE()%></p>
			<p>
				상품후기:
				<%=detail.getPROD_REVIEW()%></p>
			<p>
				성별:
				<%
			if (detail.getTO_GENDER().equals("M")) {
				out.print("남아");
			} else if (detail.getTO_GENDER().equals("W")) {
				out.print("여아");
			} else {
				out.print("무관");
			}
			%>
			</p>
			<p>
				나이:
				<%=detail.getMIN_AGE()%>
				~
				<%=detail.getMAX_AGE()%>개월
			</p>
		</div>

		<!-- 댓글 입력 및 출력 -->
		<div class="comment-section">
			<h3 class="comment">💬 댓글</h3>
			<form
				action="AddProductCommentService?p_id=<%=request.getParameter("p_id")%>"
				method="post">
				<input class="recomment" name="comment" placeholder="댓글을 입력하세요...">
				<br><input type="submit" class="btn4" value="작성">
			</form>
			<div class="comment-list">
				<%
				ProductCommentDAO cmt_dao = new ProductCommentDAO();
				userDAO user_dao = new userDAO();

				ArrayList<ProductCommentDTO> list = cmt_dao.readComment(request.getParameter("p_id"));

				String name = null;
				for (ProductCommentDTO comment : list) {
					name = user_dao.findUserName(comment.getID());
				%>
				<div class="comment-item">
					<p>
						<strong>🗨 <%=name%></strong>
						<%=comment.getCOMMENTS()%>
					</p>
					<!-- 대댓글 작성 폼 -->
					<form
						method="post" class="reply-form">
						<input class="reply-input" name="reply"
							placeholder="댓글을 입력하세요..."><input
							type="submit" class="btn-reply" value="댓글">
					</form>
					<!-- 대댓글 리스트 -->
					<div class="reply-list">
						
						<p class="reply-item">
							↳ <strong>댓글내용달릴곳.</strong>
						</p>
					</div>
				</div>
				<% } %>
			</div>
		</div>
	</div>
</body>
</html>