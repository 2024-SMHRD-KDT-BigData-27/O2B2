package com.project.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class WishDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public void add(WishDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("add-wish", dto);
		sqlSession.close();
		
		if(cnt > 0) {
			System.out.println("위시 리스트 추가 완료");
		}
		

	}
	
	public ArrayList<WishDTO> wishList(String id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<WishDTO> list = (ArrayList) sqlSession.selectList("wish-list", id);
		sqlSession.close();
		
		return list;
	}

	
}
