package com.project.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	// SqlSession을 만들기 위한 공장 설계 및 가동 클래스

	public static SqlSessionFactory sqlSessionFactory;
	
	// static 블록 (= 초기화 블록) : 클래스 호출시 자동적으로 실행되는 블록
	static {
		try {
			String resource = "com/project/db/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = 
					new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	// static 블록 종료
	
	// DAO에서 DB 접근을 위해 SqlSession을 호출할 수 있는 메소드 생성 
	// => sqlSeesionFactory 값을 반환해주는 메소드
	
	public static SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}
}
