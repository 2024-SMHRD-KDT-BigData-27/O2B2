package com.project.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class DealDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	public void addDeal(DealDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.insert("add-deal", dto);

		sqlSession.close();
	}
	
	public ArrayList<DealDTO> findList(String id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<DealDTO> list = (ArrayList)sqlSession.selectList("deal-list", id);
		
		sqlSession.close();
		
		return list;
	}
}
