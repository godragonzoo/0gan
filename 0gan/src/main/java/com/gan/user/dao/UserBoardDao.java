package com.gan.user.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.gan.user.db.DBManager;
import com.gan.vo.FaqVo;
import com.gan.vo.NotiVo;

@Repository
public class UserBoardDao {
	
	public List<NotiVo> selectNoti(Map<String, Object> map){
		return DBManager.selectNoti(map);
	}
	
	public int countNoti(String keyword) {
		return DBManager.countNoti(keyword);
	}

	public int countFaq(String keyword, String category) {
		return DBManager.countFaq(keyword, category);
	}

	public List<FaqVo> selectFaq(Map<String, Object> map) {
		return DBManager.selectFaq(map);
	}
}
