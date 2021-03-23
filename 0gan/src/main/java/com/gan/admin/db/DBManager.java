package com.gan.admin.db;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.gan.admin.vo.NotiVo;

public class DBManager {
	private static SqlSessionFactory factory;
	static {
		Reader reader = null;
		try {
			System.out.println("factory build전");
			reader = Resources.getResourceAsReader("com/gan/admin/db/mybatis-config.xml");
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

	public static List<NotiVo> selectAllNoti() {
		SqlSession session = factory.openSession();
		List<NotiVo> list = session.selectList("admin.selectAllNoti");
		session.close();
		System.out.println("DBManager");
		return list;
	}
}// class
