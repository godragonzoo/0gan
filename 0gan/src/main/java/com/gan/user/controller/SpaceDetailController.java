package com.gan.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpaceDetailController {
	/**
	 * localhost/searchDetail.do
	 * -> user/search/searchDetail.jsp
	 * 사용자 검색 결과 상세 페이지
	 * by 함혜림
	 * @return mav
	 */
	@RequestMapping("/searchDetail.do")
	public ModelAndView searchDetail() {
		ModelAndView mav = new ModelAndView("/user/search/searchDetail");
		return mav;
	}
	
	
}
