package com.gan.host.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.gan.host.db.DBManager;
import com.gan.host.vo.HostAnsVo;
import com.gan.host.vo.HostQueVo;
import com.gan.host.vo.RevwVo;


@Repository
public class BoardDao {
	
	public List<HostQueVo> selectAllQue(){
		return DBManager.selectAllQue();
	}

	public HostQueVo selectOneQue(int host_que_num){
		return DBManager.selectOneQue(host_que_num);
	}

	public HostAnsVo selectOneAns(int host_que_num){
		return DBManager.selectOneAns(host_que_num);
	}

	public int selectAnsExist(int host_que_num){
		return DBManager.selectAnsExist(host_que_num);
	}
	
	public int insertAns(HostAnsVo aVo) {
		return DBManager.insertAns(aVo);
	}
	
	public int updateAns(HostAnsVo aVo) {
		return DBManager.updateAns(aVo);
	} 
	
	public List<RevwVo> selectAllRevw(){ 
		return DBManager.selectAllRevw(); 
	}
	
	
}
