package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.model.CalenderDAO;

@WebServlet("/DeleteCalenderService")
public class DeleteCalenderService extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cal_id = request.getParameter("calId");
		
		CalenderDAO dao = new CalenderDAO();
		
		dao.deleteCal(cal_id);

		response.sendRedirect("calender.jsp");
	}

}
