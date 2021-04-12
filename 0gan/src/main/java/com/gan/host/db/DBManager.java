package com.gan.host.db;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.gan.host.vo.HostAnsVo;
import com.gan.host.vo.HostQueVo;
import com.gan.host.vo.RevwVo;
import com.gan.vo.UserVo;


public class DBManager {
	private static SqlSessionFactory factory;
	static {
		Reader reader = null;
		try {
			System.out.println("factory build전");
			reader = Resources.getResourceAsReader("com/gan/host/db/dbConfig.xml");
			System.out.println(reader);
			factory = new SqlSessionFactoryBuilder().build(reader);
			System.out.println("factory build");
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				System.out.println("finally");
				if (reader != null)
					reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("factory build 성공");
	}// static

	
	public static List<HostQueVo> selectAllQue() {
		SqlSession session = factory.openSession();
		List<HostQueVo> qList = session.selectList("board.selectAllQue");
		session.close();
		return qList;
	}

	public static HostQueVo selectOneQue(int host_que_num) {
		SqlSession session = factory.openSession();
		HostQueVo qVo = session.selectOne("board.selectOneQue", host_que_num);
		session.close();
		return qVo;
	}
	
	public static HostAnsVo selectOneAns(int host_ans_num) {
		SqlSession session = factory.openSession();
		HostAnsVo aVo = session.selectOne("board.selectOneAns", host_ans_num);
		session.close();
		return aVo;
	}
	
	public static int selectAnsExist(int host_ans_num) {
		SqlSession session = factory.openSession();
		int aVo = session.selectOne("board.selectAnsExist", host_ans_num);
		session.close();
		return aVo;
	}
	
	public static int insertAns(HostAnsVo aVo) {
		//System.out.println(aVo);
		SqlSession session = factory.openSession();
		int re = session.update("board.insertAns", aVo);
		session.commit();
		session.close();
		return re;
	}
	
	
	public static int updateAns(HostAnsVo aVo) {
		SqlSession session = factory.openSession();
		int re = session.update("board.updateAns", aVo);
		session.commit();
		System.out.println("넘어와라:" + aVo);
		session.close();
		return re;
	}
	
	public static List<RevwVo> selectAllRevw() { 
		SqlSession session = factory.openSession(); 
		List<RevwVo> rList = session.selectList("board.selectAllRevw"); 
		session.close(); 
		return rList;
	 }
	 
}
