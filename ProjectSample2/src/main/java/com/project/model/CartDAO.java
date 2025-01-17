package com.project.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class CartDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public void add(CartDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("cart_container", dto);
		sqlSession.close();

		if (cnt > 0) {
			System.out.println("장바구니 추가 완료");
		}
	}

	public ArrayList<CartDTO> cart_list(String id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<CartDTO> list = (ArrayList) sqlSession.selectList("cart-list", id);
		sqlSession.close();

		return list;
	}

	public void deleteCart(String cart_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		sqlSession.delete("delete-cart", cart_id);
	}

}
