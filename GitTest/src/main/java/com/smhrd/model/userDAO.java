package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class userDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	public int join(userDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("join", dto);
		sqlSession.close();
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
		} else {
			System.out.println("회원가입 실패");
		}
		
		return cnt;
	}

	public userDTO login(userDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		userDTO info = sqlSession.selectOne("login", dto);
		sqlSession.close();
		
		return info;
	}

}
