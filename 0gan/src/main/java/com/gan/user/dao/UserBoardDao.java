package com.gan.user.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.gan.user.db.DBManager;
import com.gan.vo.FaqVo;
import com.gan.vo.NotiVo;
import com.gan.vo.ThemePlaceVo;
import com.gan.vo.ThemeVo;

@Repository
public class UserBoardDao {
	
	/**
	 * 공지사항 목록 by 박권익
	 * @param map
	 * @return
	 */
	public List<NotiVo> selectNoti(Map<String, Object> map){
		return DBManager.selectNoti(map);
	}
	
	/**
	 * 공지사항 페이징 처리 by 박권익
	 * @param keyword
	 * @return
	 */
	public int countNoti(String keyword) {
		return DBManager.countNoti(keyword);
	}

	/**
	 * 도움말 페이징 처리 by 박권익
	 * @param keyword
	 * @param category
	 * @return
	 */
	public int countFaq(String keyword, String category) {
		return DBManager.countFaq(keyword, category);
	}

	/**
	 * 도움말 목록 by 박권익
	 * @param map
	 * @return
	 */
	public List<FaqVo> selectFaq(Map<String, Object> map) {
		return DBManager.selectFaq(map);
	}
	
	/**
	 * 기획전 목록 by 박권익
	 * @return
	 */
	public List<ThemeVo> selectAllTheme(){
		return DBManager.selectAllTheme();
	}
	
	/**
	 * 기획전에 등록된 장소 목록 by 박권익
	 * @param theme_num
	 * @return
	 */
	public List<ThemePlaceVo> selectThemePlace(int theme_num){
		return DBManager.selectThemePlace(theme_num);
	}
	
	/**
	 * 선택된 기획전 정보 by 박권익
	 * @param theme_num
	 * @return
	 */
	public ThemeVo selectTheme(int theme_num) {
		return DBManager.selectTheme(theme_num);
	}
}
