package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class childDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public int join(childDTO child_dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("child-join", child_dto);
		sqlSession.close();
		

		return cnt;

	}

}
