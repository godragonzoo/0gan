package com.gan.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {

	/**
	 * localhost/search.do
	 * -> user/search/search.jsp
	 * 사용자 검색 결과 페이지-지도 on
	 * by 함혜림
	 * @return mav
	 */
	@RequestMapping("/search.do")
	public ModelAndView search() {
		ModelAndView mav = new ModelAndView("/user/search/search");
		return mav;
	}

}
