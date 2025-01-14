package com.project.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.model.childDAO;
import com.project.model.childDTO;
import com.project.model.userDAO;
import com.project.model.userDTO;


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

		Map<Integer, String> genders = new TreeMap<>();
		Map<Integer, String> ages = new TreeMap<>();
		Enumeration<String> parameterNames = request.getParameterNames();

		while (parameterNames.hasMoreElements()) {
		    String paramName = parameterNames.nextElement();
		    if (paramName.startsWith("child-gender")) {
		        // Extract the child number (e.g., from "child-gender1")
		        int childNumber = Integer.parseInt(paramName.substring("child-gender".length()));
		        genders.put(childNumber, request.getParameter(paramName));
		    }
		    if (paramName.startsWith("child-age")) {
		        // Extract the child number (e.g., from "child-age1")
		        int childNumber = Integer.parseInt(paramName.substring("child-age".length()));
		        ages.put(childNumber, request.getParameter(paramName));
		    }
		}

		for (Integer key : genders.keySet()) {
		    String gender = genders.get(key);
		    String age = ages.get(key);
		    System.out.println("Child" + key + ": Gender = " + gender + ", Age = " + age);
		}
		
		userDTO dto = new userDTO(id, pw, name, ad, ad_detail, ph, email, null);
		userDAO dao = new userDAO();
		
		childDTO child_dto = new childDTO();
		childDAO child_dao = new childDAO();
		
		int cnt = dao.join(dto);
		for (Integer key : genders.keySet()) {
			child_dto.setGENDER(genders.get(key));
			child_dto.setCHILD_BIRTHDATE(ages.get(key));
			child_dto.setPARENT_ID(id);
			child_dao.join(child_dto);
		}
		
		
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		} else {
			response.sendRedirect("register.jsp");			
		}
	}


	private childDTO childDTO() {
		// TODO Auto-generated method stub
		return null;
	}

}
