package com.gan.admin.db;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.gan.admin.vo.AdmAnsVo;
import com.gan.admin.vo.AdmQueVo;
import com.gan.admin.vo.AdmVo;
import com.gan.admin.vo.FaqVo;
import com.gan.admin.vo.NotiVo;
import com.gan.admin.vo.ThemeVo;
import com.gan.admin.vo.UserVo;

public class DBManager {
	private static SqlSessionFactory factory;
	static {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("com/gan/admin/db/mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (reader != null)
					reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}// static

	public static AdmVo selectAdmin(String username) {
		SqlSession session = factory.openSession();
		AdmVo adm = session.selectOne("admin.selectAdmin", username);
		session.close();
		return adm;
	}
	/**
	 * 모든 공지사항 정보 가져오기 by 박권익
	 * 
	 * @return List<NotiVo>
	 */
	public static List<NotiVo> selectAllNoti() {
		SqlSession session = factory.openSession();
		List<NotiVo> list = session.selectList("admin.selectAllNoti");
		session.close();
		return list;
	}// selectAllNoti

	/**
	 * 공지사항 정보 가져오기 by 박권익
	 * 
	 * @param noti_num
	 * @return
	 */
	public static NotiVo selectNoti(int noti_num) {
		SqlSession session = factory.openSession();
		NotiVo noti = session.selectOne("admin.selectNoti", noti_num);
		session.close();
		return noti;
	}

	/**
	 * 공지사항 등록 by 박권익
	 * 
	 * @param noti
	 * @return
	 */
	public static int insertNoti(NotiVo noti) {
		SqlSession session = factory.openSession();
		int re = session.insert("admin.insertNoti", noti);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 공지사항 삭제 by 박권익
	 * 
	 * @param noti_num
	 * 
	 * @return (int) 삭제 성공여부
	 */
	public static int deleteNoti(int noti_num) {
		SqlSession session = factory.openSession();
		int re = session.delete("admin.deleteNoti", noti_num);
		session.commit();
		session.close();
		return re;
	}// deleteNoti

	/**
	 * 공지사항 수정 by 박권익
	 * 
	 * @param noti
	 * @return
	 */
	public static int updateNoti(NotiVo noti) {
		SqlSession session = factory.openSession();
		int re = session.update("admin.updateNoti", noti);
		session.commit();
		session.close();
		return re;
	}// updateNoti

	/**
	 * 모든 도움말 정보 가져오기 by 박권익
	 * 
	 * @return List<FaqVo>
	 */
	public static List<FaqVo> selectAllFaq() {
		SqlSession session = factory.openSession();
		List<FaqVo> list = session.selectList("admin.selectAllFaq");
		session.close();
		return list;
	}// selectAllFaq

	/**
	 * 도움말 정보 by 박권익
	 * 
	 * @param faq_num
	 * @return
	 */
	public static FaqVo selectFaq(int faq_num) {
		SqlSession session = factory.openSession();
		FaqVo faq = session.selectOne("admin.selectFaq", faq_num);
		session.close();
		return faq;
	}

	/**
	 * 도움말 등록 by 박권익
	 * 
	 * @param faq
	 * @return
	 */
	public static int insertFaq(FaqVo faq) {
		SqlSession session = factory.openSession();
		int re = session.insert("admin.insertFaq", faq);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 도움말 수정 by 박권익
	 * 
	 * @param faq
	 * @return
	 */
	public static int updateFaq(FaqVo faq) {
		SqlSession session = factory.openSession();
		int re = session.update("admin.updateFaq", faq);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 도움말 삭제 by 박권익
	 * 
	 * @param faq_num
	 * @return
	 */
	public static int deleteFaq(int faq_num) {
		SqlSession session = factory.openSession();
		int re = session.delete("admin.deleteFaq", faq_num);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 모든 1대1문의 정보 가져오기 by 박권익
	 * 
	 * @return List<AdmAnsVo>
	 */
	public static List<AdmAnsVo> selectAllAdmQue() {
		SqlSession session = factory.openSession();
		List<AdmAnsVo> list = session.selectList("admin.selectAllAdmQue");
		session.close();
		return list;
	}// selectAllAdmAns

	/**
	 * 1대1문의 정보 가져오기 by 박권익
	 * 
	 * @param adm_que_num
	 * @return
	 */
	public static AdmQueVo selectAdmQue(int adm_que_num) {
		SqlSession session = factory.openSession();
		AdmQueVo admQue = session.selectOne("admin.selectAdmQue", adm_que_num);
		session.close();
		return admQue;
	}

	/**
	 * 1대1문의 답변 정보 by 박권익
	 * 
	 * @param adm_que_num
	 * @return
	 */
	public static AdmAnsVo selectAdmAns(int adm_que_num) {
		SqlSession session = factory.openSession();
		AdmAnsVo admAns = session.selectOne("admin.selectAdmAns", adm_que_num);
		session.close();
		return admAns;
	}

	/**
	 * 1대1문의 답변 등록 by 박권익
	 * 
	 * @param admAns
	 * @return
	 */
	public static int insertAdmAns(AdmAnsVo admAns) {
		SqlSession session = factory.openSession();
		int re = session.insert("admin.insertAdmAns", admAns);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 1대1문의 답변 등록 후 답변여부 수정 by 박권익
	 * 
	 * @param adm_que_num
	 * @return
	 */
	public static int updateAdmQueCheck(int adm_que_num) {
		SqlSession session = factory.openSession();
		int re = session.update("admin.updateAdmQueCheck", adm_que_num);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 1대1문의 답변 수정 by 박권익
	 * 
	 * @param admAns
	 * @return
	 */
	public static int updateAdmAns(AdmAnsVo admAns) {
		SqlSession session = factory.openSession();
		int re = session.update("admin.updateAdmAns", admAns);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 기획전 목록 by 박권익
	 * 
	 * @return
	 */
	public static List<ThemeVo> selectAllTheme() {
		SqlSession session = factory.openSession();
		List<ThemeVo> list = session.selectList("admin.selectAllTheme");
		session.close();
		return list;
	}

	/**
	 * 기획전 정보 by 박권익
	 * 
	 * @param theme_num
	 * @return
	 */
	public static ThemeVo selectTheme(int theme_num) {
		SqlSession session = factory.openSession();
		ThemeVo theme = session.selectOne("admin.selectTheme", theme_num);
		session.close();
		return theme;
	}

	/**
	 * 기획전 등록 by 박권익
	 * 
	 * @param theme
	 * @return
	 */
	public static int insertTheme(ThemeVo theme) {
		SqlSession session = factory.openSession();
		int re = session.insert("admin.insertTheme", theme);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 기획전 수정 by 박권익
	 * 
	 * @param theme
	 * @return
	 */
	public static int updateTheme(ThemeVo theme) {
		SqlSession session = factory.openSession();
		int re = session.update("admin.updateTheme", theme);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 기획전 삭제 by 박권익
	 * 
	 * @param theme_num
	 * @return
	 */
	public static int deleteTheme(int theme_num) {
		SqlSession session = factory.openSession();
		int re = session.delete("admin.deleteTheme", theme_num);
		session.commit();
		session.close();
		return re;
	}
	
	/**
	 * 모든 장소 정보 by 박권익
	 * @return
	 */
	public static List<Map> selectPlace(int theme_num){
		SqlSession session = factory.openSession();
		List<Map> list = session.selectList("admin.selectPlace", theme_num);
		session.close();
		return list;
	}
	
	/**
	 * 기획전에 등록됭 장소 정보 가져오기 by 박권익
	 * @param theme_num
	 * @return
	 */
	public static List<Map> selectAllThemePlace(int theme_num) {
		SqlSession session = factory.openSession();
		List<Map> list = session.selectList("admin.selectAllThemePlace", theme_num);
		session.close();
		return list;
	}
	
	/**
	 * 기획전에 장소 등록 by 박권익
	 * @param theme_num
	 * @param place_num
	 * @return
	 */
	public static int insertThemePlace(int theme_num, int place_num) {
		SqlSession session = factory.openSession();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("theme_num", theme_num);
		map.put("place_num", place_num);
		int re = session.insert("admin.insertThemePlace", map);
		session.commit();
		session.close();
		return re;
	}
	
	/**
	 * 기획전에 등록한 장소 삭제 by 박권익
	 * @param place_num
	 * @return
	 */
	public static int deleteThemePlace(int theme_num, int place_num) {
		SqlSession session = factory.openSession();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("theme_num", theme_num);
		map.put("place_num", place_num);
		int re = session.delete("admin.deleteThemePlace", map);
		session.commit();
		session.close();
		return re;
	}
	public static int insertAdmin(AdmVo adm) {
		SqlSession session = factory.openSession();
		int re = session.insert("admin.insertAdmin", adm);
		session.commit();
		session.close();
		return re;
	}
	
	/**
	 * 회원 정보 조회 by 신용주
	 */
	public static List<UserVo> selectAllUser() {
		SqlSession session = factory.openSession();
		List<UserVo> ulist = session.selectList("admin.selectAllUser");
		session.close();
		return ulist;
	}
	
	/**
	 * 회원 상세 정보 by 신용주
	 */
	public static UserVo selectOneUser(int user_num) { 
		SqlSession session = factory.openSession(); 
		UserVo uVo = session.selectOne("admin.selectOneUser", user_num); 
		//System.out.println(uVo);
		session.close(); 
		return uVo;
	  }
	
	/**
	 * 회원 상세 정보 조회 by 신용주
	 */
	public static Map selectOneUserInfo(HashMap map) {
		//System.out.println("map:"+map);
		SqlSession session = factory.openSession(); 
		Map login = session.selectOne("admin.selectOneUserInfo", map); 
		//System.out.println(list);
		session.close(); 
		return login;
	}

	/**
	 * 회원 예약 상세 정보 조회 by 신용주
	 */
	public static List<Map> selectUserRsvt(HashMap map) {
		//System.out.println(map);
		SqlSession session = factory.openSession(); 
		List<Map> rsvt = session.selectList("admin.selectUserRsvt", map); 
		//System.out.println(rsvt);
		session.close(); 
		return rsvt;
	}
	
	/**
	 * 회원 등급 수정 by 신용주
	 */
	public static int updateUserGrade(UserVo uVo) {
		SqlSession session = factory.openSession();
		int re = session.update("admin.updateUserGrade", uVo);
		//System.out.println(uVo);
		session.commit();
		session.close();
		return re;
	}

	/**
	 * 공간 목록 조회 by 신용주
	 */
	public static List<Map> selectAllPlace(HashMap map) {
		SqlSession session = factory.openSession();
		List<Map> pList = session.selectList("admin.selectAllPlace", map);
		//System.out.println(pList);
		session.close();
		return pList;
	} 

	/**
	 * 예약 목록 조회 by 신용주
	 */
	public static List<Map> selectAllRsvt(HashMap map) {
		SqlSession session = factory.openSession();
		List<Map> rList = session.selectList("admin.selectAllRsvt", map);
		//System.out.println(rList);
		session.close();
		return rList;
	} 
	
	/**
	 * 전체 매출 조회 by 신용주
	 */
	public static List<Map> selectTotalSales(HashMap map) {	
		SqlSession session = factory.openSession();
		List<Map> tSales = session.selectList("admin.selectTotalSales", map);
		System.out.println(tSales);
		session.close();
		return tSales;
	}
	
	/**
	 * 공간별 매출 조회 by 신용주
	 */
	public static List<Map> selectPlaceSalesDetail(HashMap map) {	
		SqlSession session = factory.openSession();
		List<Map> pSales = session.selectList("admin.selectPlaceSalesDetail", map);
		//System.out.println(pSales);
		session.close();
		return pSales;
	}
	
	/**
	 * 호스트별 매출 조회 by 신용주
	 */
	public static List<Map> selectHostSales(HashMap map) {
		SqlSession session = factory.openSession();
		List<Map> hList = session.selectList("admin.selectHostSales", map);
		//System.out.println(hList);
		session.close();
		return hList;
	}
	
	/**
	 * 호스트 보유 공간 조회 by 신용주
	 */
	public static List<Map> selectHostPlace(HashMap map) {	
		SqlSession session = factory.openSession();
		List<Map> hPlaceList = session.selectList("admin.selectHostPlace", map);
		System.out.println(hPlaceList);
		session.close();
		return hPlaceList;
	}
	
	/**
	 * 호스트별 공간매출 조회 by 신용주
	 */
	public static List<Map> selectHostSalesDetail(HashMap map) {	
		
		//System.out.println("매개변수 잘 오나요?" + map);
		SqlSession session = factory.openSession();
		List<Map> hPlaceList = session.selectList("admin.selectHostSalesDetail", map);
		System.out.println(hPlaceList);
		session.close();
		return hPlaceList;
	}
	
}// class
