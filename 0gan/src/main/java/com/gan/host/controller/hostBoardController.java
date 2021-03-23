package com.gan.host.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gan.host.dao.BoardDao;


@Controller
public class hostBoardController {
	
	@Autowired
	private BoardDao dao;
	
	public void setDao(BoardDao dao) {
		this.dao = dao;
	}

	/**
	 * localhost/hostBoardQna.do
	 * -> host/board/hostBoardQna.jsp
	 * 호스트 문의게시글 관리
	 * by 신용주
	 */
	@RequestMapping("/hostQna.do")
	public ModelAndView hostQna() {
		ModelAndView mav = new ModelAndView("/host/board/hostQna");
		mav.addObject("list", dao.selectAll());
		return mav;
	}
	
	/**
	 * localhost/hostQnaInsert.do
	 * -> host/board/hostQnaInsert.jsp
	 * 호스트 문의게시글 답변
	 * by 신용주
	 */
	@RequestMapping("/hostQnaInsert.do")
	public ModelAndView insertHostQna(int host_que_num) {
		ModelAndView mav = new ModelAndView("/host/board/hostQnaInsert");
		mav.addObject("vo", dao.selectOne(host_que_num));
		return mav;
	}
	
	/**
	 * localhost/hostQnaUpdate.do
	 * -> host/board/hostQnaUpdate.jsp
	 * 호스트 문의게시글 수정
	 * by 신용주
	 */
	@RequestMapping("/hostQnaUpdate.do")
	public ModelAndView updateHostQna() {
		ModelAndView mav = new ModelAndView("/host/board/hostQnaUpdate");
		return mav;
	}
	
	/**
	 * localhost/hostBoardRevw.do
	 * -> host/board/hostBoardRevw.jsp
	 * 호스트 후기게시글 관리
	 * by 신용주
	 */
	@RequestMapping("/hostRevw.do")
	public ModelAndView hostRevw() {
		ModelAndView mav = new ModelAndView("/host/board/hostRevw");
		return mav;
	}
}
