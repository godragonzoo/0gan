package com.gan.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gan.admin.dao.AdminDao;
import com.gan.admin.vo.NotiVo;

@Controller
public class AdminController {

	@Autowired
	private AdminDao dao;
	
	public void setDao(AdminDao dao) {
		this.dao = dao;
	}

	/**
	 * localhost/adminLogin.do -> admin/login.jsp 관리자 로그인페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminLogin.do")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView("/admin/login");
		return mav;
	}

	/**
	 * localhost/adminNoti.do -> admin/noti.jsp 관리자 공지사항관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNoti.do")
	public ModelAndView selectAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/notice");
		List<NotiVo> list = dao.selectAllNoti();
		mav.addObject("list", list);
		return mav;
	}

	/**
	 * 공지사항 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNoti_insert.do")
	public ModelAndView insertAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/noticeInsert");
		return mav;
	}

	/**
	 * 공지사항 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNoti_update.do")
	public ModelAndView updateAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/noticeUpdate");
		return mav;
	}

	/**
	 * 공지사항 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNotice_delete.do")
	public ModelAndView deleteAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/noticeDelete");
		return mav;
	}

	/**
	 * 공지사항 조회 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNoti_detail.do")
	public ModelAndView detailAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/noticeDetail");
		return mav;
	}

	/**
	 * localhost/admin_faq.do -> admin/faq.jsp 관리자 도움말관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminFaq.do")
	public ModelAndView selectAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faq");
		return mav;
	}

	/**
	 * 도움말 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faqInsert.do")
	public ModelAndView insertAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faqInsert");
		return mav;
	}

	/**
	 * 도움말 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faqUpdate.do")
	public ModelAndView updateAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faqUpdate");
		return mav;
	}

	/**
	 * 도움말 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faqDelete.do")
	public ModelAndView deletesAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faqDelete");
		return mav;
	}

	/**
	 * 도움말 조회 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faqDetail.do")
	public ModelAndView detailAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faqDetail");
		return mav;
	}

	/**
	 * loaclhost/admin_answer.do -> admin/admAns.jsp 관리자 1대1문의관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminAnswer.do")
	public ModelAndView selectAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAns");
		return mav;
	}

	/**
	 * 1대1문의 답변 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminAnswerInsert.do")
	public ModelAndView insertAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAnsInsert");
		return mav;
	}

	/**
	 * 1대1문의 답변 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminAnswerUpdate.do")
	public ModelAndView updateAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAnsUpdate");
		return mav;
	}

	/**
	 * 1대1문의 답변 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminAnswerDelete.do")
	public ModelAndView deleteAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAnsdelete");
		return mav;
	}

	/**
	 * 1대1문의 답변 조회 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminAnswerDetail.do")
	public ModelAndView detailAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAnsDetail");
		return mav;
	}

	/**
	 * 관리자 에러페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminError.do")
	public ModelAndView error() {
		ModelAndView mav = new ModelAndView("/admin/error");
		return mav;
	}

}
