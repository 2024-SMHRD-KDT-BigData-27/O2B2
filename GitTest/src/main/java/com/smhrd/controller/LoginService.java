package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.userDAO;
import com.smhrd.model.userDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		userDTO dto = new userDTO(id, pw, null, null, null, null, null, null);
		userDAO dao = new userDAO();
		
		userDTO info = dao.login(dto);
		
		HttpSession session = request.getSession();
		session.setAttribute("info", info);
		
		response.sendRedirect("main.jsp");
		
		
	}

}
