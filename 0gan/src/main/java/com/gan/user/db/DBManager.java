package com.gan.user.db;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.gan.vo.FaqVo;
import com.gan.vo.NotiVo;

public class DBManager {

	private static SqlSessionFactory factory;

	static {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("com/gan/user/db/mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (reader != null)
					reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}// static
	
	public static List<NotiVo> selectNoti(Map<String, Object> map){
		SqlSession session = factory.openSession();
		List<NotiVo> list = session.selectList("board.selectNoti", map);
		session.close();
		return list;
	}
	
	public static int countNoti(String keyword) {
		SqlSession session = factory.openSession();
		int re = session.selectOne("board.countNoti", keyword);
		session.close();
		return re;
	}

	public static int countFaq(String keyword, String category) {
		SqlSession session = factory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("category", category);
		int re = session.selectOne("board.countFaq", map);
		session.close();
		return re;
	}

	public static List<FaqVo> selectFaq(Map<String, Object> map) {
		SqlSession session = factory.openSession();
		List<FaqVo> list = session.selectList("board.selectFaq", map);
		session.close();
		return list;
	}

}
