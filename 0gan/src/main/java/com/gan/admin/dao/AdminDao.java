package com.gan.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gan.admin.db.DBManager;
import com.gan.admin.vo.NotiVo;

@Repository
public class AdminDao {

	public List<NotiVo> selectAllNoti(){
		return DBManager.selectAllNoti();
	}
}
