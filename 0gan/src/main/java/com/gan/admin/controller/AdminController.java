package com.gan.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	/**
	 * localhost/admin_login.do -> admin/admin_login.jsp 관리자 로그인페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_login.do")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView("/admin/admin_login");
		return mav;
	}

	/**
	 * localhost/admin_noti.do -> admin/noti.jsp 관리자 공지사항관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_noti.do")
	public ModelAndView selectAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/noti");
		return mav;
	}

	/**
	 * 공지사항 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_noti_insert.do")
	public ModelAndView insertAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/notiInsert");
		return mav;
	}

	/**
	 * 공지사항 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_noti_update.do")
	public ModelAndView updateAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/notiUpdate");
		return mav;
	}

	/**
	 * 공지사항 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_noti_delete.do")
	public ModelAndView deleteAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/notiDelete");
		return mav;
	}

	/**
	 * localhost/admin_event.do -> admin/event.jsp 관리자 기획전관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_event.do")
	public ModelAndView selectAdminEvent() {
		ModelAndView mav = new ModelAndView("/admin/event");
		return mav;
	}

	/**
	 * 이벤트 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_event_insert.do")
	public ModelAndView insertAdminEvent() {
		ModelAndView mav = new ModelAndView("/admin/eventInsert");
		return mav;
	}

	/**
	 * 이벤트 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_event_update.do")
	public ModelAndView updateAdminEvent() {
		ModelAndView mav = new ModelAndView("/admin/eventUpdate");
		return mav;
	}

	/**
	 * 이벤트 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_event_delete.do")
	public ModelAndView deleteAdminEvent() {
		ModelAndView mav = new ModelAndView("/admin/eventDelete");
		return mav;
	}

	/**
	 * localhost/admin_faq.do -> admin/faq.jsp 관리자 도움말관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faq.do")
	public ModelAndView selectAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faq");
		return mav;
	}

	/**
	 * 도움말 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faq_insert.do")
	public ModelAndView insertAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faqInsert");
		return mav;
	}

	/**
	 * 도움말 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faq_update.do")
	public ModelAndView updateAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faqUpdate");
		return mav;
	}

	/**
	 * 도움말 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_faq_delete.do")
	public ModelAndView deletesAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/faqDelete");
		return mav;
	}

	/**
	 * loaclhost/admin_answer.do -> admin/admAns.jsp 관리자 1대1문의관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_answer.do")
	public ModelAndView selectAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAns");
		return mav;
	}

	/**
	 * 1대1문의 답변 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_answer_insert.do")
	public ModelAndView insertAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAnsInsert");
		return mav;
	}

	/**
	 * 1대1문의 답변 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_answer_update.do")
	public ModelAndView updateAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAnsUpdate");
		return mav;
	}

	/**
	 * 1대1문의 답변 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_answer_delete.do")
	public ModelAndView deleteAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/admAnsdelete");
		return mav;
	}

	/**
	 * 관리자 에러페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/admin_error.do")
	public ModelAndView error() {
		ModelAndView mav = new ModelAndView("/admin/admin_error");
		return mav;
	}

}
