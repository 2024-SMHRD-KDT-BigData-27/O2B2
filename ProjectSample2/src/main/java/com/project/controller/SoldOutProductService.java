package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.model.ProductDAO;

@WebServlet("/SoldOutProductService")
public class SoldOutProductService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p_id = request.getParameter("p_id");
		
		ProductDAO dao = new ProductDAO();
		
		dao.soldOut(p_id);
		
		response.sendRedirect("main.jsp");
	}

}
