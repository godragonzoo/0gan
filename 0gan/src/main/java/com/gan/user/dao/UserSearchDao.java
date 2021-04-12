package com.gan.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gan.user.db.DBManager;
import com.gan.vo.UserSearchVo;

@Repository
public class UserSearchDao {

	public List<UserSearchVo> findAll() {
		return DBManager.findAll();
	}
}
