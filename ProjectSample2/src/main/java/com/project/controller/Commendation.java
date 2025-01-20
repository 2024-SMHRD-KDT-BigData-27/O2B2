package com.project.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
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
import com.project.model.childDAO;
import com.project.model.childDTO;
import com.project.model.userDTO;

@WebServlet("/Commendation")
public class Commendation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

        userDTO info = (userDTO) session.getAttribute("info");

        childDAO child_dao = new childDAO();

        // 자녀 목록 가져오기
        ArrayList<childDTO> child_list = child_dao.findChild(info.getID());

        // ArrayList로 초기화
        List<String> gender_list = new ArrayList<>();
        List<Long> age_list = new ArrayList<>();

        // 자녀 정보를 처리
        for (childDTO child : child_list) {
            System.out.println(child);

            // 성별 추가
            if(child.getGENDER().equals("man")) {
            	gender_list.add("M");
            } else {
            	gender_list.add("W");            	
            }

            // 생년월일 처리
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDate birthDate = LocalDate.parse(child.getCHILD_BIRTHDATE(), formatter);

            // 오늘 날짜 가져오기
            LocalDate today = LocalDate.now();

            // 생후 개월 수 계산
            long months = ChronoUnit.MONTHS.between(birthDate, today);

            // 나이 추가
            age_list.add(months);
        }
        
        // 파라미터 맵 구성
        Map<String, Object> params = new HashMap<>();
        params.put("genders", gender_list.toArray(new String[0])); // 배열로 변환
        params.put("ages", age_list.stream().mapToLong(l -> l).toArray()); // 배열로 변환

        // DAO 호출
        ProductDAO pro_dao = new ProductDAO();
        ArrayList<ProductDTO> pro_list = pro_dao.commendation(params);
        
        System.out.println(pro_list);

        // 결과 저장 후 페이지 리다이렉트
        session.setAttribute("commendation", pro_list);
        response.sendRedirect("product_Recommendation.jsp");
	}

}
