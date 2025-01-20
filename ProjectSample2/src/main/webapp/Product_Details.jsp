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
					<a href="CartService?p_id= <%=request.getParameter("p_id")%>"
						class="btn1"><button>🛒장바구니</button></a> <a
						href="AddWishListService?p_id= <%=request.getParameter("p_id")%>"
						class="btn2"><button onclick="wishService()">❤찜</button></a> <a
						href="cleandelivery.jsp?p_id= <%=request.getParameter("p_id")%>"
						class="btn3"><button>구매하기</button></a>
				</div>
			</div>
		</div>
		<script>
			function wishService() {
				alert('찜 목록에💌 추가 되었습니다!');
			}
		</script>

		<!-- 상세 내용 -->
		<div class="details">
			<h3 class="detail-comment">상세 내용</h3>
			<p>
				<%
				java.text.SimpleDateFormat inputFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S");
				java.text.SimpleDateFormat outputFormat = new java.text.SimpleDateFormat("yyyy년 M월");

				// detail.getBUY_DATE()의 반환값이 문자열인 경우
				String buyDateString = detail.getBUY_DATE();
				java.util.Date buyDate = inputFormat.parse(buyDateString);
				String formattedDate = outputFormat.format(buyDate);
				%>
				구매시기:
				<%=formattedDate%></p>
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
				<br> <input type="submit" class="btn4" value="작성">
			</form>
			<div class="comment-list">
				<%
				ProductCommentDAO cmt_dao = new ProductCommentDAO();
				userDAO user_dao = new userDAO();

				ArrayList<ProductCommentDTO> list = cmt_dao.readComment(request.getParameter("p_id"));

				String name = null;
				for (ProductCommentDTO comment : list) {
					if (comment.getSUPER_CMT_ID() == null) {
						name = user_dao.findUserName(comment.getID());
				%>
				<div class="comment-item" onclick="toggleReplyBox(this)">
					<p>
						<strong>🗨 <%=name%></strong>
						<%=comment.getCOMMENTS()%>
					</p>

					<!-- 숨겨진 답글 입력 창 -->
					<div class="reply-box" style="display: none; margin-left: 20px;">
						<form
							action="AddReplyCommentService?p_id=<%=request.getParameter("p_id")%>&parent_id=<%=comment.getP_CMT_ID()%>"
							method="post">
							<input type="text" name="reply" placeholder="답글을 입력하세요..."
								class="reply-input">
							<button type="submit" class="reply-button">작성</button>
						</form>
					</div>
				</div>
				<%
				ArrayList<ProductCommentDTO> list1 = cmt_dao.readReply(comment.getP_CMT_ID());
				for (ProductCommentDTO reply : list1) {
					name = user_dao.findUserName(reply.getID());
				%>
				<p>
					<strong>ㄴ 🗨 <%=name%></strong>
					<%=reply.getCOMMENTS()%>
				</p>
				<%
				}
				}
				}
				%>
			</div>

		</div>
	</div>
</body>
<script>
	// 답글 입력 창 토글 함수
	function toggleReplyBox(element) {
		// 클릭한 댓글 내부에서 reply-box 찾기
		const replyBox = element.querySelector('.reply-box');

		if (replyBox) {
			// 현재 상태에 따라 보이기/숨기기
			if (replyBox.style.display === 'none'
					|| replyBox.style.display === '') {
				replyBox.style.display = 'block'; // 답글 입력 창 보이기
			} else {
				replyBox.style.display = 'none'; // 답글 입력 창 숨기기
			}
		}
	}
</script>
</html>