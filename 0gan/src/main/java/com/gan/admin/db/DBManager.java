package com.gan.admin.db;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.aop.IntroductionInfo;

import com.gan.admin.vo.AdmAnsVo;
import com.gan.admin.vo.AdmQueVo;
import com.gan.admin.vo.FaqVo;
import com.gan.admin.vo.NotiVo;
import com.gan.admin.vo.ThemeVo;

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
	 * @param noti
	 * @return
	 */
	public static int updateNoti(NotiVo noti) {
		SqlSession session = factory.openSession();
		int re = session.update("admin.updateNoti", noti);
		session.commit();
		session.close();
		return re;
	}//updateNoti
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
	 * @return
	 */
	public static List<ThemeVo> selectAllTheme() {
		SqlSession session = factory.openSession();
		List<ThemeVo> list = session.selectList("admin.selectAllTheme");
		session.close();
		return list;
	}

	/**
	 * 기획전 삭제 by 박권익
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
}// class
