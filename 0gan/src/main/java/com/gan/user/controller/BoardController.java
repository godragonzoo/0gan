package com.gan.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gan.user.dao.UserBoardDao;

@Controller
public class BoardController {

	private static final int PAGE_SIZE = 10;

	@Autowired
	private UserBoardDao dao;

	public void setDao(UserBoardDao dao) {
		this.dao = dao;
	}

	/**
	 * localhost/admQue.do -> user/board/admQue.jsp 사용자 1:1문의 by 함혜림
	 * 
	 * @return mav
	 */
	@RequestMapping("/admQue.do")
	public ModelAndView admQue() {
		ModelAndView mav = new ModelAndView("/user/board/admQue");
		return mav;
	}

	/**
	 * localhost/hostQue.do -> user/board/hostQue.jsp 사용자 호스트문의 by 함혜림
	 * 
	 * @return mav
	 */
	@RequestMapping("/hostQue.do")
	public ModelAndView hostQue() {
		ModelAndView mav = new ModelAndView("/user/board/hostQue");
		return mav;
	}

	/**
	 * localhost/revw.do -> user/board/revw.jsp 사용자 revw by 함혜림
	 * 
	 * @return mav
	 */
	@RequestMapping("/revw.do")
	public ModelAndView revw() {
		ModelAndView mav = new ModelAndView("/user/board/revw");
		return mav;
	}

	@RequestMapping("/notice.do")
	public ModelAndView selectNoti(@RequestParam(value = "page", defaultValue = "1") int page, String keyword,
			HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/board/notice");
		if ((keyword == null) && session.getAttribute("keyword") != null) {
			keyword = (String) session.getAttribute("keyword");
		}
		int totalRecord = dao.countNoti(keyword);
		int totalPage = totalRecord / PAGE_SIZE;
		if ((totalRecord % PAGE_SIZE) != 0) {
			totalPage++;
		}
		int start = PAGE_SIZE * (page - 1) + 1;
		int end = PAGE_SIZE * page;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("keyword", keyword);
		mav.addObject("list", dao.selectNoti(map));
		mav.addObject("totalPage", totalPage);
		session.setAttribute("keyword", keyword);
		return mav;
	}

	@RequestMapping("/faq.do")
	public ModelAndView selectFaq(@RequestParam(value = "page", defaultValue = "1") int page, String keyword,
			String category, HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/board/faq");
		
		System.out.println("keyword:"+keyword);
		System.out.println("category:"+category);
		
		if (keyword == null && session.getAttribute("keyword") != null) {
			keyword = (String) session.getAttribute("keyword");
		}
		if (category == null && session.getAttribute("category") != null) {
			category = (String) session.getAttribute("category");
		}
		int totalRecord = dao.countFaq(keyword, category);
		int totalPage = totalRecord / PAGE_SIZE;
		if ((totalRecord % PAGE_SIZE) != 0) {
			totalPage++;
		}
		int start = PAGE_SIZE * (page - 1) + 1;
		int end = PAGE_SIZE * page;
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("keyword", keyword);
		map.put("category", category);
		map.put("start", start);
		map.put("end", end);
		mav.addObject("list", dao.selectFaq(map));
		mav.addObject("totalPage", totalPage);
		session.setAttribute("keyword", keyword);
		session.setAttribute("category", category);
		return mav;
	}
}
