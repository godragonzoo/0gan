package com.gan.host.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gan.host.dao.BoardDao;
import com.gan.host.vo.HostAnsVo;
import com.gan.host.vo.HostQueVo;


@Controller
public class HostBoardController {
	
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
		mav.addObject("qList", dao.selectAllQue());
		return mav;
	}
	
	/**
	 * localhost/hostQnaDetail.do
	 * -> host/board/hostQnaDetail.jsp
	 * 호스트 문의게시글 문의글 불러오기
	 * by 신용주
	 */
	@RequestMapping("/hostQnaDetail.do")
	public ModelAndView detailHostQna(int host_que_num) {
		ModelAndView mav = new ModelAndView("/host/board/hostQnaDetail");
		HostQueVo qVo = new HostQueVo();
		//int re = dao.selectAnsExist(host_que_num);
		//mav.setViewName("/host/board/hostQnaDetail.do");
			mav.addObject("qVo", dao.selectOneQue(host_que_num));
			mav.addObject("aVo", dao.selectOneAns(host_que_num));
		return mav;
	}
	
	/**
	 * localhost/hostQnaUpdate.do
	 * -> host/board/hostQnaUpdate.jsp
	 * 호스트 문의게시글 답변 수정
	 * by 신용주
	 */
	@RequestMapping(value = "/hostQnaUpdate.do", method = RequestMethod.GET)
	public ModelAndView updateHostQna(int host_que_num) {
		ModelAndView mav = new ModelAndView("/host/board/hostQnaUpdate");
		mav.addObject("aVo", dao.selectOneAns(host_que_num));
		return mav;
	}

	@RequestMapping(value = "/hostQnaUpdate.do", method = RequestMethod.POST)
	public ModelAndView updateHostQnaAns(HostAnsVo aVo) {
		ModelAndView mav = new ModelAndView();
		int re = dao.updateAns(aVo);
		if(re == 1) {
			mav.setViewName("redirect:/hostQnaDetail.do?host_que_num="+aVo.getHost_que_num());
		}else {
			mav.setViewName("error");
		}
		return mav;
	}
	/**
	 * localhost/hostQnaInsert.do
	 * -> host/board/hostQnaInsert.jsp
	 * 호스트 문의게시글 답변 작성
	 * by 신용주
	 */
	
	@RequestMapping(value = "/hostQnaInsert.do", method = RequestMethod.GET)
	public ModelAndView insertHostQna(int host_que_num) {
		ModelAndView mav = new ModelAndView("/host/board/hostQnaInsert");
		mav.addObject("qVo", dao.selectOneQue(host_que_num));
		return mav;
	}

	@RequestMapping(value = "/hostQnaInsert.do", method = RequestMethod.POST)
	public ModelAndView insertHostQna(HostAnsVo aVo) {
		ModelAndView mav = new ModelAndView("/host/board/hostQnaInsert");
		int re = dao.insertAns(aVo);
		
		if(re == 1) {
			mav.setViewName("redirect:/hostQnaDetail.do?host_que_num=" + aVo.getHost_que_num());
		}else {
			mav.setViewName("error");
		}
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
		 mav.addObject("rList", dao.selectAllRevw()); 
		 return mav; 
	}
	
}
