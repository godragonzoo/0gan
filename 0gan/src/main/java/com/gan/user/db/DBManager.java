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
import com.gan.vo.ThemePlaceVo;
import com.gan.vo.ThemeVo;
import com.gan.vo.UserSearchVo;
import com.gan.vo.UserVo;

public class DBManager {

	private static SqlSessionFactory factory;

	static {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("com/gan/user/db/mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			System.out.println("예외:" + e.getMessage());
		} finally {
			try {
				if (reader != null)
					reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}// static

	/* TEST */
	public static List<UserSearchVo> findAll() {
		SqlSession session = factory.openSession();
		List<UserSearchVo> list = session.selectList("search.findAll");
		session.close();
		return list;
	}

	/**
	 * 검색 조건에 적합한 공지사항 목록 by 박권익
	 * 
	 * @param map
	 * @return
	 */
	public static List<NotiVo> selectNoti(Map<String, Object> map) {
		SqlSession session = factory.openSession();
		List<NotiVo> list = session.selectList("board.selectNoti", map);
		session.close();
		return list;
	}

	/**
	 * 검색 조건에 적합한 공지사항 개수 by 박권익
	 * 
	 * @param keyword
	 * @return
	 */
	public static int countNoti(String keyword) {
		SqlSession session = factory.openSession();
		int re = session.selectOne("board.countNoti", keyword);
		session.close();
		return re;
	}

	/**
	 * 검색 조건에 적합한 도움말 개수 by 박권익
	 * 
	 * @param keyword
	 * @param category
	 * @return
	 */
	public static int countFaq(String keyword, String category) {
		SqlSession session = factory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("category", category);
		int re = session.selectOne("board.countFaq", map);
		session.close();
		return re;
	}

	/**
	 * 검색 조건에 적합한 도움말 목록 by 박권익
	 * 
	 * @param map
	 * @return
	 */
	public static List<FaqVo> selectFaq(Map<String, Object> map) {
		SqlSession session = factory.openSession();
		List<FaqVo> list = session.selectList("board.selectFaq", map);
		session.close();
		return list;
	}

	/**
	 * 기획전 목록 by 박권익
	 * 
	 * @return
	 */
	public static List<ThemeVo> selectAllTheme() {
		SqlSession session = factory.openSession();
		List<ThemeVo> list = session.selectList("board.selectAllTheme");
		session.close();
		return list;
	}

	/**
	 * 기획전에 등록된 장소 목록 by 박권익
	 * 
	 * @param theme_num
	 * @return
	 */
	public static List<ThemePlaceVo> selectThemePlace(int theme_num) {
		SqlSession session = factory.openSession();
		List<ThemePlaceVo> list = session.selectList("board.selectThemePlace", theme_num);
		session.close();
		return list;
	}
	
	/**
	 * 기획전 정보 by 박권익
	 * @param theme_num
	 * @return
	 */
	public static ThemeVo selectTheme(int theme_num) {
		SqlSession session = factory.openSession();
		ThemeVo theme = session.selectOne("board.selectTheme", theme_num);
		session.close();
		return theme;
	}
	
	public static UserVo getUser(String user_email) {
		SqlSession session = factory.openSession();
		UserVo user = session.selectOne("info.getUser", user_email);
		session.close();
		return user;
	}
	
	/**
	 * by 김은비
	 * @param user
	 * @return
	 */
	public static int insertUser(UserVo user) {
		SqlSession session = factory.openSession();
		int re = session.insert("info.insertUser", user);
		session.commit();
		session.close();
		return re;
	}

	public static UserVo selectUser(int user_num) {
		SqlSession session = factory.openSession();
		UserVo user = session.selectOne("info.selectUser", user_num);
		session.close();
		return user;
	}
}
