package com.gan.user.dao;

import org.springframework.stereotype.Repository;

import com.gan.user.db.DBManager;
import com.gan.vo.UserVo;

@Repository
public class UserInfoDao {
	
	/**
	 * 회원가입
	 * 
	 * @param 
	 * @return
	 */
	public int insertUser(UserVo user) {
		return DBManager.insertUser(user);
	}

	public UserVo selectUser(int user_num) {
		return DBManager.selectUser(user_num);
	}
	
	public UserVo getUser(String user_email) {
		return DBManager.getUser(user_email);
	}
}
