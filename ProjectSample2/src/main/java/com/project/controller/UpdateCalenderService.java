package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.model.CalenderDAO;
import com.project.model.CalenderDTO;

@WebServlet("/UpdateCalenderService")
public class UpdateCalenderService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cal_id = request.getParameter("calId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String backColor = request.getParameter("backColor");
		String textColor = request.getParameter("textColor");
		
		CalenderDTO dto = new CalenderDTO();
		
		dto.setCLD_ID(cal_id);
		dto.setCLD_TITLE(title);
		dto.setCLD_CONTENT(content);
		dto.setBACK_COLOR(backColor);
		dto.setTEXT_COLOR(textColor);
		
		CalenderDAO dao = new CalenderDAO();
		
		dao.updateCal(dto);
		
		response.sendRedirect("calender.jsp");
	}

}
