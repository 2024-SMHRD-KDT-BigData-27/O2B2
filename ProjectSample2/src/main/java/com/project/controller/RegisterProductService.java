package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.ProductDAO;
import com.project.model.ProductDTO;
import com.project.model.userDTO;

@WebServlet("/RegisterProductService")
public class RegisterProductService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String image_url = request.getParameter("img");
		long price = Long.parseLong(request.getParameter("price"));
		long delivery_price = Long.parseLong(request.getParameter("delivery-price"));
		String purchaseDate = request.getParameter("purchaseDate");
		String usagePeriod = request.getParameter("usagePeriod");
		String productCondition = request.getParameter("productCondition");
		String review = request.getParameter("review");
		String gender = request.getParameter("gender");
		long min_age = Long.parseLong(request.getParameter("min-age"));
		long max_age = Long.parseLong(request.getParameter("max-age"));
		String category = request.getParameter("category");
		
		// 제품 id, 이미지, 최소나이, 최대나이, 판매여부, 등록자 아이디, 제품 카테고리
		System.out.println(gender);
		
		HttpSession session = request.getSession();
		userDTO info = (userDTO) session.getAttribute("info");
		String user_id = info.getID();
		
		ProductDTO dto = new ProductDTO();
		dto.setPROD_NAME(name);
		dto.setPROD_IMG(image_url);
		dto.setPROD_PRICE(price);
		dto.setPROD_DELIVERY_FEE(delivery_price);
		dto.setBUY_DATE(purchaseDate);
		dto.setUSE_PERIOD(usagePeriod);
		dto.setPROD_STATE(productCondition);
		dto.setPROD_REVIEW(review);
		dto.setTO_GENDER(gender);
		dto.setMIN_AGE(min_age);
		dto.setMAX_AGE(max_age);
		dto.setSOLD_YN("N");
		dto.setSELLER_ID(user_id);
		dto.setPROD_CATEGORY(category);
		
		ProductDAO dao = new ProductDAO();
		int cnt = dao.regist(dto);
		
		if(cnt>0) {
			System.out.println("상품등록 완료");
			
		} else {
			System.out.println("상품등록 실패");
			
		}
		
		response.sendRedirect("main.jsp");
		
		
	}

}
