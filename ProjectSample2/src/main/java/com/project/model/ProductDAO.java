package com.project.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
	
	public ArrayList<ProductDTO> proCategory(String category){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<ProductDTO> list = (ArrayList)sqlSession.selectList("pro-category", category);
		
		sqlSession.close();
		
		return list;
		
	}
	
	public ArrayList<ProductDTO> proCategoryGender(String category, String gender){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		HashMap<String, String> param = new HashMap<>();
		param.put("category", category);
		param.put("gender", gender);
		
		ArrayList<ProductDTO> list = (ArrayList)sqlSession.selectList("pro-category-gender", param);
		
		sqlSession.close();
		
		return list;
		
	}
	
	public ArrayList<ProductDTO> proFilter(Map<String, Object> params){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<ProductDTO> list = (ArrayList) sqlSession.selectList("pro-filter", params);

		sqlSession.close();
		
		return list;
	}
	
	public void soldOut(String p_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		sqlSession.update("sold-out", p_id);
		sqlSession.close();
		
	}
}