package com.gan.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gan.user.dao.UserSearchDao;



@Controller
public class SearchController {
	@Autowired
	private UserSearchDao dao;
	
	public void setDao(UserSearchDao dao) {
		this.dao = dao;
	}

	/*테스트용 - 추후 삭제*/
	@RequestMapping("/test")
	public ModelAndView testCopy() {
		ModelAndView mav = new ModelAndView("/user/search/test");
		mav.addObject("list",dao.findAll());
		return mav;
	}
	
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
		mav.addObject("list",dao.findAll());
		return mav;
	}

}
