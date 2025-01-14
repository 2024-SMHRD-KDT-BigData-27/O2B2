package com.project.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class ProductDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	public int regist(ProductDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("regist", dto);
		
		sqlSession.close();
		return cnt;
	}

}
