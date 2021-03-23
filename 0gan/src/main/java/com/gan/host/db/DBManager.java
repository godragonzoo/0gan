package com.gan.host.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.gan.host.vo.HostQueVo;


public class DBManager {
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/gan/host/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();

		} catch (Exception e) {
			System.out.println("예외발생:" + e.getMessage());
		}
	}

	public static HostQueVo selectOne(int host_que_num) {
		SqlSession session = factory.openSession();
		HostQueVo vo = session.selectOne("host.selectOne", host_que_num);
		session.close();
		return vo;
	}
	
	public static List<HostQueVo> selectAll() {
		SqlSession session = factory.openSession();
		List<HostQueVo> list = session.selectList("host.selectAll");
		session.close();
		return list;
	}
}
