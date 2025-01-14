package com.project.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class WishDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public void add(WishDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("add-wish", dto);
		sqlSession.close();
		

	}

	
}
