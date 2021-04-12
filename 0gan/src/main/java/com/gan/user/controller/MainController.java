package com.gan.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gan.admin.vo.AdmVo;
import com.gan.user.dao.UserInfoDao;
import com.gan.vo.UserVo;

@Controller
public class MainController {

	/**
	 * localhost/main.do
	 * -> user/main.jsp
	 * 사용자 메인페이지
	 * by 함혜림
	 * @return mav
	 */
	@RequestMapping("/main.do")
	public ModelAndView userMain() {
		ModelAndView mav = new ModelAndView("/user/main");
		return mav;
	}

	/**
	 * localhost/login.do
	 * -> user/login.jsp
	 * 사용자 로그인페이지
	 * by 함혜림
	 * @return mav
	 */
	@RequestMapping("/login.do")
	public ModelAndView userLogin() {
		ModelAndView mav = new ModelAndView("/user/login");
		return mav;
	}
	
	
}
