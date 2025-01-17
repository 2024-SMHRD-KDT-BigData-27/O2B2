package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.DealDAO;
import com.project.model.DealDTO;
import com.project.model.ProductDAO;
import com.project.model.userDTO;

@WebServlet("/SoldOutProductService")
public class SoldOutProductService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p_id = request.getParameter("p_id");
		double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
		
		HttpSession session = request.getSession();
		userDTO info = (userDTO) session.getAttribute("info");
		DealDTO dto = new DealDTO();
		
		dto.setID(info.getID());
		dto.setPRODUCT_ID(p_id);
		dto.setDEAL_AMOUNT(totalPrice);
		
		DealDAO deal_dao = new DealDAO();
		ProductDAO dao = new ProductDAO();
		
		dao.soldOut(p_id);
		deal_dao.addDeal(dto);
		
		
		response.sendRedirect("main.jsp");
	}

}
