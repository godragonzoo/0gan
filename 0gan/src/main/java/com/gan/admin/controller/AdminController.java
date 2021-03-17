package com.gan.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	/**
	 * localhost/admin.do
	 * -> admin/admin.jsp
	 * 관리자 메인페이지
	 * by 박권익
	 * @return
	 */
	@RequestMapping("/admin.do")
	public ModelAndView admin() {
		ModelAndView mav = new ModelAndView("/admin/admin");
		return mav;
	}
	
	/**
	 * localhost/admin_login.do
	 * -> admin/admin_login.do
	 * 관리자 로그인페이지
	 * by 박권익
	 * @return
	 */
	@RequestMapping("/admin_login.do")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView("/admin/admin_login");
		return mav;
	}
	
}
