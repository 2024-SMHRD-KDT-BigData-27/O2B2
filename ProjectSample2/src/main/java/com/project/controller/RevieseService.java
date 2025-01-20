package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.userDAO;
import com.project.model.userDTO;


@WebServlet("/RevieseService")
public class RevieseService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String add = request.getParameter("ad");
		String add_detail = request.getParameter("ad-detail");
		String ph = request.getParameter("ph");
		String email = request.getParameter("email");
		
		userDTO dto = new userDTO();
		
		dto.setID(id);
		dto.setNAME(name);
		dto.setADDRESS(add);
		dto.setDETAILED_ADDRESS(add_detail);
		dto.setPHONE(ph);
		dto.setEMAIL(email);
		
		userDAO dao = new userDAO();
		
		dao.updateInfo(dto);
		
		HttpSession session = request.getSession();
		session.setAttribute("info", dto);
		response.sendRedirect("main.jsp");
	}

}
