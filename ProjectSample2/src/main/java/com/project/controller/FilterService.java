package com.project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.ProductDAO;
import com.project.model.ProductDTO;

@WebServlet("/FilterService")
public class FilterService extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] genders = request.getParameterValues("gender");
		String[] states = request.getParameterValues("state");

		// 각 파라미터 값을 확인하고 null일 경우 기본값 설정
		int age_min = 0; // 기본값
		int age_max = 100; // 기본값
		int price_min = 0; // 기본값
		int price_max = 100000; // 기본값

		try {
		    if (request.getParameter("age_min") != null) {
		        age_min = Integer.parseInt(request.getParameter("age_min"));
		    }
		    if (request.getParameter("age_max") != null) {
		        age_max = Integer.parseInt(request.getParameter("age_max"));
		    }
		    if (request.getParameter("price_min") != null) {
		        price_min = Integer.parseInt(request.getParameter("price_min"));
		    }
		    if (request.getParameter("price_max") != null) {
		        price_max = Integer.parseInt(request.getParameter("price_max"));
		    }
		} catch (NumberFormatException e) {
		    // 숫자로 변환하는 도중 오류가 발생한 경우 로그 출력
		    System.out.println("Invalid number format: " + e.getMessage());
		}

		// genders 또는 states가 null인 경우 빈 배열로 초기화
		List<String> genderList = (genders != null) ? List.of(genders) : new ArrayList<>();
		List<String> stateList = (states != null) ? List.of(states) : new ArrayList<>();

		/*
		 * // 입력값 확인용 로그 System.out.println("Genders: " + genderList);
		 * System.out.println("States: " + stateList); System.out.println("Age Min: " +
		 * age_min + ", Age Max: " + age_max); System.out.println("Price Min: " +
		 * price_min + ", Price Max: " + price_max);
		 */

		// Map에 파라미터 추가
		Map<String, Object> params = new HashMap<>();
		params.put("genders", genderList);
		params.put("states", stateList);
		params.put("ageMin", age_min);
		params.put("ageMax", age_max);
		params.put("priceMin", price_min);
		params.put("priceMax", price_max);

		// DAO 호출
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list = dao.proFilter(params);

		// 세션에 필터 결과 저장
		HttpSession session = request.getSession();
		session.setAttribute("filter", list);

		// 결과 페이지로 리다이렉트
		response.sendRedirect("filter_result.jsp");

	}
	
}
