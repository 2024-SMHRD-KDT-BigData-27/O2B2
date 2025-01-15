package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.ProductCommentDAO;
import com.project.model.ProductCommentDTO;
import com.project.model.userDTO;

@WebServlet("/AddProductCommentService")
public class AddProductCommentService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String prod_id = request.getParameter("p_id");
		String comment = request.getParameter("comment");
		
		HttpSession session = request.getSession();
		
		userDTO info = (userDTO) session.getAttribute("info");
		
		ProductCommentDTO dto = new ProductCommentDTO();
		
		dto.setPROD_ID(Double.parseDouble(prod_id));
		dto.setCOMMENTS(comment);
		dto.setID(info.getID());
		
		ProductCommentDAO dao = new ProductCommentDAO();
		
		dao.addComment(dto);
		
		response.sendRedirect("Product_Details.jsp?p_id=" + Double.parseDouble(prod_id));
	}

}
