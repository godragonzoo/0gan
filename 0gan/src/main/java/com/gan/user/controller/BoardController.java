package com.gan.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

	/**
	 * localhost/admQue.do
	 * -> user/board/admQue.jsp
	 * 사용자 1:1문의
	 * by 함혜림
	 * @return mav
	 */
	@RequestMapping("/admQue.do")
	public ModelAndView admQue() {
		ModelAndView mav = new ModelAndView("/user/board/admQue");
		return mav;
	}

	/**
	 * localhost/hostQue.do
	 * -> user/board/hostQue.jsp
	 * 사용자 호스트문의
	 * by 함혜림
	 * @return mav
	 */
	@RequestMapping("/hostQue.do")
	public ModelAndView hostQue() {
		ModelAndView mav = new ModelAndView("/user/board/hostQue");
		return mav;
	}

	/**
	 * localhost/revw.do
	 * -> user/board/revw.jsp
	 * 사용자 revw
	 * by 함혜림
	 * @return mav
	 */
	@RequestMapping("/revw.do")
	public ModelAndView revw() {
		ModelAndView mav = new ModelAndView("/user/board/revw");
		return mav;
	}
	
}
