package com.project.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class ProductCommentDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	public void addComment(ProductCommentDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("add-comment", dto);
		
		sqlSession.close();
	}
	
	public ArrayList<ProductCommentDTO> readComment(String p_id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<ProductCommentDTO> list = (ArrayList) sqlSession.selectList("select-comment", p_id);
		sqlSession.close();
		
		return list;
	}
	
	public void addReply(ProductCommentDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("add-reply", dto);
		
		sqlSession.close();
	}
	
	public ArrayList<ProductCommentDTO> readReply(double super_id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<ProductCommentDTO> list = (ArrayList) sqlSession.selectList("select-reply", super_id);
		sqlSession.close();
		
		return list;
	}
	
}
