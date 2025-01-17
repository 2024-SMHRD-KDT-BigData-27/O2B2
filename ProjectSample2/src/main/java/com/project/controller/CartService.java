package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.CartDAO;
import com.project.model.CartDTO;
import com.project.model.userDTO;


@WebServlet("/CartService")
public class CartService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		userDTO info = (userDTO)session.getAttribute("info");
		double p_id = Double.parseDouble(request.getParameter("p_id"));
		
		CartDTO dto = new CartDTO();
		
		dto.setID(info.getID());
		dto.setPRODUCT_ID(p_id);
		
		CartDAO dao = new CartDAO();
		
		dao.add(dto);
		
		response.sendRedirect("cart_container.jsp");
	}

}
