package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.CalenderDAO;
import com.project.model.CalenderDTO;
import com.project.model.userDTO;

@WebServlet("/AddCalenderService")
public class AddCalenderService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String content = request.getParameter("content");
		String backColor = request.getParameter("backColor");
		String textColor = request.getParameter("textColor");
		
		HttpSession session = request.getSession();
		
		userDTO info = (userDTO)session.getAttribute("info");
		
		CalenderDTO dto = new CalenderDTO();
		
		dto.setCLD_TITLE(title);
		dto.setSTART_DT(startDate);
		dto.setEND_DT(endDate);
		dto.setCLD_CONTENT(content);
		dto.setBACK_COLOR(backColor);
		dto.setTEXT_COLOR(textColor);
		dto.setID(info.getID());
		
		CalenderDAO dao = new CalenderDAO();
		
		dao.addCalender(dto);
		
		response.sendRedirect("calender.jsp");
	}

}
