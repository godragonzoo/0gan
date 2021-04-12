package com.gan.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.gan.admin.db.DBManager;
import com.gan.admin.vo.AdmAnsVo;
import com.gan.admin.vo.AdmQueVo;
import com.gan.admin.vo.AdmVo;
import com.gan.admin.vo.FaqVo;
import com.gan.admin.vo.NotiVo;
import com.gan.admin.vo.ThemeVo;
import com.gan.admin.vo.UserVo;

@Repository
public class AdminDao {

	public AdmVo selectAdmin(String username) {
		return DBManager.selectAdmin(username);
	}

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
	 * 
	 * @param faq_num
	 * @return
	 */
	public FaqVo selectFaq(int faq_num) {
		return DBManager.selectFaq(faq_num);
	}

	/**
	 * 도움말 등록 by 박권익
	 * 
	 * @param faq
	 * @return
	 */
	public int insertFaq(FaqVo faq) {
		return DBManager.insertFaq(faq);
	}

	/**
	 * 도움말 삭제 by 박권익
	 * 
	 * @param faq_num
	 * @return
	 */
	public int deleteFaq(int faq_num) {
		return DBManager.deleteFaq(faq_num);
	}

	/**
	 * 도움말 수정 by 박권익
	 * 
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
	 * 
	 * @param adm_que_num
	 * @return
	 */
	public AdmQueVo selectAdmQue(int adm_que_num) {
		return DBManager.selectAdmQue(adm_que_num);
	}

	/**
	 * 1대1문의 답변 등록
	 * 
	 * @param admAns
	 * @return
	 */
	public int insertAdmAns(AdmAnsVo admAns) {
		return DBManager.insertAdmAns(admAns);
	}

	/**
	 * 1대1문의 답변여부 답변완료로 수정 by 박권익
	 * 
	 * @param adm_que_num
	 * @return
	 */
	public int updateAdmQueCheck(int adm_que_num) {
		return DBManager.updateAdmQueCheck(adm_que_num);
	}

	/**
	 * 1대1문의 답변 수정 by 박권익
	 * 
	 * @param admAns
	 * @return
	 */
	public int updateAdmAns(AdmAnsVo admAns) {
		return DBManager.updateAdmAns(admAns);
	}

	/**
	 * 기획전 목록 by 박권익
	 * 
	 * @return
	 */
	public List<ThemeVo> selectAllTheme() {
		return DBManager.selectAllTheme();
	}

	/**
	 * 기획전 정보 by 박권익
	 * 
	 * @param theme_num
	 * @return
	 */
	public ThemeVo selectTheme(int theme_num) {
		return DBManager.selectTheme(theme_num);
	}

	/**
	 * 기획전 등록 by 박권익
	 * 
	 * @param theme
	 * @return
	 */
	public int insertTheme(ThemeVo theme) {
		return DBManager.insertTheme(theme);
	}

	/**
	 * 기획전 수정 by 박권익
	 * 
	 * @param theme
	 * @return
	 */
	public int updateTheme(ThemeVo theme) {
		return DBManager.updateTheme(theme);
	}

	/**
	 * 기획전 삭제 by 박권익
	 * 
	 * @param theme_num
	 * @return
	 */
	public int deleteTheme(int theme_num) {
		return DBManager.deleteTheme(theme_num);
	}

	/**
	 * 모든 장소 정보 by 박권익
	 * 
	 * @return
	 */
	public List<Map> selectPlace(int theme_num) {
		return DBManager.selectPlace(theme_num);
	}

	/**
	 * 기회전에 등록된 장소 정보 가져오기 by 박권익
	 * 
	 * @param theme_num
	 * @return
	 */
	public List<Map> selectAllThemePlace(int theme_num) {
		return DBManager.selectAllThemePlace(theme_num);
	}

	/**
	 * 기획전에 장소 등록 by 박권익
	 * 
	 * @param theme_num
	 * @param place_num
	 * @return
	 */
	public int insertThemePlace(int theme_num, int place_num) {
		return DBManager.insertThemePlace(theme_num, place_num);
	}

	/**
	 * 기획전에 등록한 장소 삭제 by 박권익
	 * 
	 * @param place_num
	 * @return
	 */
	public int deleteThemePlace(int theme_num, int place_num) {
		return DBManager.deleteThemePlace(theme_num, place_num);
	}

	public int insertAdmin(AdmVo adm) {
		return DBManager.insertAdmin(adm);
	}
	
	/**
	 * 회원 정보 조회 by 신용주
	 */
	public List<UserVo> selectAllUser(){
		return DBManager.selectAllUser();
	}
	
	/**
	 * 회원 상세 정보 by 신용주
	 */
	public UserVo selectOneUser(int user_num){
		return DBManager.selectOneUser(user_num);
	}
	
	/**
	 * 회원 상세 정보 조회 by 신용주
	 */
	public Map selectOneUserInfo(HashMap map){
		return DBManager.selectOneUserInfo(map);
	}

	/**
	 * 회원 예약 상세 정보 조회 by 신용주
	 */
	public List<Map> selectUserRsvt(HashMap map){
		return DBManager.selectUserRsvt(map);
	}
	
	/**
	 * 회원 등급 수정 by 신용주
	 */
	public int updateUserGrade(UserVo uVo){
		return DBManager.updateUserGrade(uVo);
	}
	
	/**
	 * 공간 목록 조회 by 신용주
	 */
	public List<Map> selectAllPlace(HashMap map){
		return DBManager.selectAllPlace(map);
	}
	
	/**
	 * 전체 매출 조회 by 신용주
	 */
	public List<Map> selectTotalSales(HashMap map){
		return DBManager.selectTotalSales(map);
	}
	
	/**
	 * 공간별 매출 조회 by 신용주
	 */
	public List<Map> selectPlaceSalesDetail(HashMap map){
		return DBManager.selectPlaceSalesDetail(map);
	}
	
	/**
	 * 예약 목록 조회 by 신용주
	 */
	public List<Map> selectAllRsvt(HashMap map){
		return DBManager.selectAllRsvt(map);
	}

	/**
	 * 호스트별 매출 조회 by 신용주
	 */
	public List<Map> selectHostSales(HashMap map){
		return DBManager.selectHostSales(map);
	}

	/**
	 * 호스트 보유 공간 조회 by 신용주
	 */
	public List<Map> selectHostPlace(HashMap map){
		return DBManager.selectHostPlace(map);
	}
}
