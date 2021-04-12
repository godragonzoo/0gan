package com.gan.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gan.user.dao.UserInfoDao;
import com.gan.vo.UserVo;

/**
 * @author User
 *
 */
@Controller
public class UserInfoController {
	
	@Autowired
	private UserInfoDao dao;

	public void setDao(UserInfoDao dao) {
		this.dao = dao;
	}

	/**
	 * localhost/userSgin.do
	 * -> user/info/userSign.jsp
	 * 회원가입 페이지
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping(value = "/userSign.do", method = RequestMethod.GET)
	public ModelAndView userSignForm() {
		ModelAndView mav = new ModelAndView("/user/info/userSign");
		return mav;
	}
	
	@RequestMapping(value = "/userSign.do", method = RequestMethod.POST)
	public String userSignSubmit(com.gan.vo.UserVo user) {
		System.out.println("http://localhost/userSign.do post 동작");
		System.out.println(user);
		int re = dao.insertUser(user);
		String result = "회원가입에 성공하였습니다.";
		if(re != 1) {
			result = "회원가입이 실패하였습니다.";
		}
		return result;
	}
	
	/**
	 * localhost/userInfo.do
	 * -> user/info/userInfo.jsp
	 * 프로필 열람 페이지
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userInfo.do")
	public ModelAndView userInfo(int user_num) {
		ModelAndView mav = new ModelAndView("/user/info/userInfo");
		mav.addObject("userInfo", dao.selectUser(user_num));
		return mav;
	}
	
	/**
	 * localhost/userInfoUpdate.do
	 * -> user/info/userInfoUpdate.jsp
	 * 프로필 수정 페이지
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userInfoUpdate.do")
	public ModelAndView userInfoUpdate() {
		ModelAndView mav = new ModelAndView("/user/info/userInfoUpdate");
		return mav;
	}
	
	/**
	 * localhost/userHostQueList.do
	 * -> user/info/userHostQueList.jsp
	 * 호스트 문의 내역
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userHostQueList.do")
	public ModelAndView userHostQueList() {
		ModelAndView mav = new ModelAndView("/user/info/userHostQueList");
		return mav;
	}
	
	/**
	 * localhost/userAdmQueList.do
	 * -> user/info/userAdmQueList.jsp
	 * 관리자 문의 내역
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userAdmQueList.do")
	public ModelAndView userAdmQueList() {
		ModelAndView mav = new ModelAndView("/user/info/userAdmQueList");
		return mav;
	}
	
	/**
	 * localhost/userRsvt.do
	 * -> user/info/userRsvt.jsp
	 * 예약 페이지
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userRsvt.do")
	public ModelAndView userRsvt() {
		ModelAndView mav = new ModelAndView("/user/info/userRsvt");
		return mav;
	}
	
	/**
	 * localhost/userRsvtList.do
	 * -> user/info/userRsvtList.jsp
	 * 예약내역 페이지
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userRsvtList.do")
	public ModelAndView userRsvtList() {
		ModelAndView mav = new ModelAndView("/user/info/userRsvtList");
		return mav;
	}
	
	/**
	 * localhost/userWishlist.do
	 * -> user/info/userWishlist.jsp
	 * 관심목록 페이지
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userWishlist.do")
	public ModelAndView userWishlist() {
		ModelAndView mav = new ModelAndView("/user/info/userWishlist");
		return mav;
	}
	
	/**
	 * localhost/userPayment.do
	 * -> user/info/userPayment.jsp
	 * 관심목록 페이지
	 * by 김은비
	 * @return mav
	 */
	@RequestMapping("/userPayment.do")
	public ModelAndView userPayment() {
		ModelAndView mav = new ModelAndView("/user/info/userPayment");
		return mav;
	}
	
	
	/**
	 * Spring Security 로그인처리, User 정보 session에 저장 by 박권익
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/loginOK.do")
	public ModelAndView loginOK(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		String id = user.getUsername();
		UserVo userVo = dao.getUser(id);
		session.setAttribute("user", userVo);
		mav.setViewName("redirect:/main.do");
		return mav;
	}
	
}
