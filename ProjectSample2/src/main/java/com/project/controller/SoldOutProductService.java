package com.project.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.ProductDAO;
import com.project.model.ProductDTO;

@WebServlet("/SoldOutProductService")
public class SoldOutProductService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p_id = request.getParameter("p_id");
		
		ProductDAO dao = new ProductDAO();
		
		dao.soldOut(p_id);
		
		response.sendRedirect("main.jsp");
		HttpSession session = request.getSession();
		ArrayList<ProductDTO> purchaseList = (ArrayList<ProductDTO>) session.getAttribute("purchaseList");
		if (purchaseList == null) {
			purchaseList = new ArrayList<>();
		}
		purchaseList.add(product);
		session.setAttribute("purchaseList", purchaseList);
		
		// 구매 내역 페이지로 리다이렉트
		response.sendRedirect("purchasePage.jsp");
	}

   }
	
}
