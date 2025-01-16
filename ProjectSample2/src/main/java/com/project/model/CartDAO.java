package com.project.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class CartDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public void add(CartDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("add-cart", dto);
		sqlSession.close();
		
		if(cnt > 0) {
			System.out.println("장바구니 추가 완료");
		}
	}

	
	public ArrayList<CartDTO> cart_container(String id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<CartDTO> list = (ArrayList) sqlSession.selectList("cart_container", id);
		sqlSession.close();
		
		return list;
	}
}
