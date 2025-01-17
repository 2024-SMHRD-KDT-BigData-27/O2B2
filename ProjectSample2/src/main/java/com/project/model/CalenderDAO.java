package com.project.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.project.db.SqlSessionManager;

public class CalenderDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public void addCalender(CalenderDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.insert("add-calender", dto);

		sqlSession.close();
	}

	public ArrayList<CalenderDTO> findCal(String id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		ArrayList<CalenderDTO> list = (ArrayList)sqlSession.selectList("find-cal", id);

		sqlSession.close();
		
		return list;
	}

	public void updateCal(CalenderDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.update("update-cal", dto);

		sqlSession.close();
	}

	public void deleteCal(String cal_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		sqlSession.delete("delete-cal", cal_id);

		sqlSession.close();
	}

}
