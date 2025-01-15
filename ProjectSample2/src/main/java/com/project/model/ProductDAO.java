package com.project.model;

import java.util.ArrayList;

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
	
	public ArrayList<ProductDTO> proList(String id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<ProductDTO> list = (ArrayList)sqlSession.selectList("pro-list", id);
		
		sqlSession.close();
		
		return list;
	}

	public ProductDTO proDetail(String id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ProductDTO detail = (ProductDTO)sqlSession.selectOne("pro-detail", id);
		
		sqlSession.close();
		
		return detail;
	}
	
	public ArrayList<ProductDTO> proMain(){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<ProductDTO> list = (ArrayList)sqlSession.selectList("pro-main");
		
		sqlSession.close();
		
		return list;
	}
}
