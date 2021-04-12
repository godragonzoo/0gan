package com.gan.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gan.user.dao.UserBoardDao;
import com.gan.vo.UserVo;

@Controller
public class BoardController {

	private static final int PAGE_SIZE = 10;
	private static final int PAGE_SCOPE = 5;

	@Autowired
	private UserBoardDao dao;

	public void setDao(UserBoardDao dao) {
		this.dao = dao;
	}

	/**
	 * 공지사항 by 박권익
	 * 
	 * @param page
	 * @param keyword
	 * @param session
	 * @return
	 */
	@RequestMapping("/notice.do")
	public ModelAndView notice(@RequestParam(value = "page", defaultValue = "1") int page, String keyword,
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
		int startPage = ((page - 1) / 5) * PAGE_SCOPE + 1;
		int endPage = (startPage + 4) < totalPage ? startPage + 4 : totalPage;
		int prevPage = endPage <= 10 ? 1 : startPage - 5;
		int nextPage = endPage >= totalPage ? endPage : startPage + 5;

		int start = PAGE_SIZE * (page - 1) + 1;
		int end = PAGE_SIZE * page;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("keyword", keyword);
		mav.addObject("list", dao.selectNoti(map));
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("prevPage", prevPage);
		mav.addObject("nextPage", nextPage);
		session.setAttribute("keyword", keyword);
		return mav;
	}

	/**
	 * 도움말 by 박권익
	 * 
	 * @param page
	 * @param keyword
	 * @param category
	 * @param session
	 * @return
	 */
	@RequestMapping("/faq.do")
	public ModelAndView faq(@RequestParam(value = "page", defaultValue = "1") int page, String keyword, String category,
			HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/board/faq");

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

		int startPage = ((page - 1) / 5) * PAGE_SCOPE + 1;
		int endPage = (startPage + 4) < totalPage ? startPage + 4 : totalPage;
		int prevPage = endPage <= 10 ? 1 : startPage - 5;
		int nextPage = endPage >= totalPage ? endPage : startPage + 5;

		mav.addObject("list", dao.selectFaq(map));
		mav.addObject("page", page);
		mav.addObject("startPage", startPage);
		mav.addObject("endPage", endPage);
		mav.addObject("prevPage", prevPage);
		mav.addObject("nextPage", nextPage);
		session.setAttribute("keyword", keyword);
		session.setAttribute("category", category);
		return mav;
	}

	/**
	 * 기획전 목록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/theme.do")
	public ModelAndView theme() {
		ModelAndView mav = new ModelAndView("/user/board/theme");
		mav.addObject("list", dao.selectAllTheme());
		return mav;
	}

	/**
	 * 기획전에 등록된 장소 목록 by 박권익
	 * 
	 * @param theme_num
	 * @return
	 */
	@RequestMapping("/themePlace.do")
	public ModelAndView themePlace(int theme_num) {
		ModelAndView mav = new ModelAndView("/user/board/themePlace");
		mav.addObject("theme", dao.selectTheme(theme_num));
		mav.addObject("list", dao.selectThemePlace(theme_num));
		return mav;
	}
	
	@RequestMapping(value = "/hostQueInsert.do", method = RequestMethod.GET)
	public ModelAndView hostQueInsertForm(HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/board/hostQueInsert");
		UserVo user = (UserVo) session.getAttribute("user");
		// 스프링 시큐리티 구현 후 작성, TEST가 필요함
		return mav;
	}

	@RequestMapping(value = "/hostQueUpdate.do", method = RequestMethod.GET)
	public ModelAndView hostQueUpdateForm(HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/board/hostQueUpdate");
		return mav;
	}
	
	@RequestMapping(value="/admQueInsert.do", method=RequestMethod.GET)
	public ModelAndView admQueInsertForm(HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/board/admQueInsert");
		return mav;
	}
	
	@RequestMapping(value="/admQueUpdate.do", method = RequestMethod.GET)
	public ModelAndView admQueUpdateForm(HttpSession session) {
		ModelAndView mav = new ModelAndView("/user/board/admQueUpdate");
		return mav;
	}

}
