package com.gan.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gan.user.dao.SearchDao;



@Controller
public class SearchController {
	@Autowired
	private SearchDao dao;
	
	public void setDao(SearchDao dao) {
		this.dao = dao;
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
		//mav.addObject("list",dao.findAll());//select * from 리뷰테이블
		return mav;
	}

}
