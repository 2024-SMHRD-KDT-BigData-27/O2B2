package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.userDAO;
import com.smhrd.model.userDTO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String ad= request.getParameter("ad");
		String ad_detail= request.getParameter("ad-detail");
		String ph = request.getParameter("ph");
		String email = request.getParameter("email");
		System.out.println(ad);
		
		userDTO dto = new userDTO(id, pw, name, ad, ad_detail, ph, email, null);
		userDAO dao = new userDAO();
		
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		} else {
			response.sendRedirect("register.jsp");			
		}
	}

}
