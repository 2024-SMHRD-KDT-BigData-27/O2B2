package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.WishDAO;
import com.project.model.WishDTO;
import com.project.model.userDTO;

@WebServlet("/AddWishListService")
public class AddWishListService extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p_id = request.getParameter("p_id");
		
		HttpSession session = request.getSession();
		
		userDTO info = (userDTO) session.getAttribute("info");
		
		String info_id = info.getID();
		
		WishDTO dto = new WishDTO();
		dto.setPRODUCT_ID(Double.parseDouble(p_id));
		dto.setID(info_id);
		
		WishDAO dao = new WishDAO(); 
		
		dao.add(dto);
		
		response.sendRedirect("Product_Details.jsp?p_id="+p_id);
	
	}

}
