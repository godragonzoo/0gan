package com.gan.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gan.admin.db.DBManager;
import com.gan.admin.vo.AdmAnsVo;
import com.gan.admin.vo.AdmQueVo;
import com.gan.admin.vo.FaqVo;
import com.gan.admin.vo.NotiVo;
import com.gan.admin.vo.ThemeVo;

@Repository
public class AdminDao {

	/**
	 * 공지사항 목록 by 박권익
	 * 
	 * @return List<NotiVo>
	 */
	public List<NotiVo> selectAllNoti() {
		return DBManager.selectAllNoti();
	}// selectAllNoti

	/**
	 * 공지사항 등록 by 박권익
	 * 
	 * @param noti
	 * @return
	 */
	public int insertNori(NotiVo noti) {
		return DBManager.insertNoti(noti);
	}

	/**
	 * 공지사항 정보 by 박권익
	 * 
	 * @param noti_num
	 * @return
	 */
	public NotiVo selectNoti(int noti_num) {
		return DBManager.selectNoti(noti_num);
	}

	/**
	 * 선택한 공지사항 삭제 by 박권익
	 * 
	 * @param noti_num
	 * 
	 * @return (int) 삭제 성공여부
	 */
	public int deleteNoti(int noti_num) {
		return DBManager.deleteNoti(noti_num);
	}

	/**
	 * 공지사항 수정 by 박권익
	 * 
	 * @param noti
	 * @return
	 */
	public int updateNoti(NotiVo noti) {
		return DBManager.updateNoti(noti);
	}

	/**
	 * 도움말 목록 by 박권익
	 * 
	 * @return List<FaqVo>
	 */
	public List<FaqVo> selectAllFaq() {
		return DBManager.selectAllFaq();
	}// selectAllFaq

	/**
	 * 도움말 정보 by 박권익
	 * @param faq_num
	 * @return
	 */
	public FaqVo selectFaq(int faq_num) {
		return DBManager.selectFaq(faq_num);
	}
	/**
	 * 도움말 등록 by 박권익
	 * @param faq
	 * @return
	 */
	public int insertFaq(FaqVo faq) {
		return DBManager.insertFaq(faq);
	}
	/**
	 * 도움말 삭제 by 박권익
	 * @param faq_num
	 * @return
	 */
	public int deleteFaq(int faq_num) {
		return DBManager.deleteFaq(faq_num);
	}
	
	/**
	 * 도움말 수정 by 박권익
	 * @param faq
	 * @return
	 */
	public int updateFaq(FaqVo faq) {
		return DBManager.updateFaq(faq);
	}
	
	/**
	 * 1대1문의 목록 by 박권익
	 * 
	 * @return List<AdmAnsVo>
	 */
	public List<AdmAnsVo> selectAllAdmQue() {
		return DBManager.selectAllAdmQue();
	}// selectAllAdmAns

	public AdmAnsVo selectAdmAns(int adm_que_num) {
		return DBManager.selectAdmAns(adm_que_num);
	}
	/**
	 * 1대1문의 정보 by 박권익
	 * @param adm_que_num
	 * @return
	 */
	public AdmQueVo selectAdmQue(int adm_que_num) {
		return DBManager.selectAdmQue(adm_que_num);
	}

	/**
	 * 1대1문의 답변 등록
	 * @param admAns
	 * @return
	 */
	public int insertAdmAns(AdmAnsVo admAns) {
		return DBManager.insertAdmAns(admAns);
	}

	/**
	 * 1대1문의 답변여부 답변완료로 수정 by 박권익
	 * @param adm_que_num
	 * @return
	 */
	public int updateAdmQueCheck(int adm_que_num) {
		return DBManager.updateAdmQueCheck(adm_que_num);
	}
	
	/**
	 * 1대1문의 답변 수정 by 박권익
	 * @param admAns
	 * @return
	 */
	public int updateAdmAns(AdmAnsVo admAns) {
		return DBManager.updateAdmAns(admAns);
	}

	/**
	 * 기획전 목록 by 박권익
	 * @return
	 */
	public List<ThemeVo> selectAllTheme() {
		return DBManager.selectAllTheme();
	}
	
	/**
	 * 기획전 삭제 by 박권익
	 * @param theme_num
	 * @return
	 */
	public int deleteTheme(int theme_num) {
		return DBManager.deleteTheme(theme_num);
	}
}
