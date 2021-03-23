package com.gan.host.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gan.host.db.DBManager;
import com.gan.host.vo.HostQueVo;


@Repository
public class BoardDao {
	
	public List<HostQueVo> selectAll(){
		return DBManager.selectAll();
	}

	public HostQueVo selectOne(int host_que_num){
		return DBManager.selectOne(host_que_num);
	}
	
	
}
