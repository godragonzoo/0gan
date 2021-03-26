package com.gan.admin.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gan.admin.dao.AdminDao;
import com.gan.admin.vo.AdmAnsVo;
import com.gan.admin.vo.FaqVo;
import com.gan.admin.vo.NotiVo;
import com.gan.util.RenameUtil;

@Controller
public class AdminController {

	@Autowired
	private AdminDao dao;

	public void setDao(AdminDao dao) {
		this.dao = dao;
	}

	/**
	 * localhost/adminLogin.do -> admin/login.jsp 관리자 로그인페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminLogin.do")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView("/admin/login");
		return mav;
	}

	/**
	 * localhost/adminNoti.do -> admin/noti.jsp 관리자 공지사항관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNoti.do")
	public ModelAndView selectAdminNoti() {
		ModelAndView mav = new ModelAndView("/admin/board/notice");
		List<NotiVo> list = dao.selectAllNoti();
		mav.addObject("list", list);
		return mav;
	}

	/**
	 * 공지사항 등록 form
	 */
	@RequestMapping(value = "/adminNotiInsert.do", method = RequestMethod.GET)
	public ModelAndView insertNotiForm() {
		ModelAndView mav = new ModelAndView("/admin/board/noticeInsert");
		return mav;
	}

	/**
	 * 공지사항 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminNotiInsert.do", method = RequestMethod.POST)
	public ModelAndView insertAdminNoti(NotiVo noti, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String path = request.getSession().getServletContext().getRealPath("/upload");
		MultipartFile uploadFile = noti.getUploadFile();
		String noti_file = uploadFile.getOriginalFilename();
		if (uploadFile != null && !"".equals(noti_file)) {
			FileOutputStream fos = null;
			noti_file = RenameUtil.getRename(noti_file, path);
			try {
				byte[] data = uploadFile.getBytes();
				fos = new FileOutputStream(path + "/" + noti_file);
				fos.write(data);
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				if (fos != null)
					try {
						fos.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
			}
		}
		noti.setNoti_file(noti_file);
		int re = dao.insertNori(noti);
		if (re == 1) {
			mav.setViewName("redirect:/adminNoti.do");
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 공지사항 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminNotiUpdate.do", method = RequestMethod.GET)
	public ModelAndView updateNotiForm(int noti_num) {
		ModelAndView mav = new ModelAndView("/admin/board/noticeUpdate");
		mav.addObject("noti", dao.selectNoti(noti_num));
		return mav;
	}

	@RequestMapping(value = "/adminNotiUpdate.do", method = RequestMethod.POST)
	public ModelAndView updateAdminNoti(NotiVo noti, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String oldNotiFile = noti.getNoti_file();
		String path = request.getSession().getServletContext().getRealPath("/upload");

		MultipartFile uploadFile = noti.getUploadFile();
		String noti_file = uploadFile.getOriginalFilename();
		if (!"".equals(noti_file)) {
			noti_file = RenameUtil.getRename(noti_file, path);
			noti.setNoti_file(noti_file);
		}

		FileOutputStream fos = null;
		int re = dao.updateNoti(noti);
		if (re == 1) {
			if (!"".equals(noti_file)) {
				try {
					byte[] data = uploadFile.getBytes();
					fos = new FileOutputStream(path + "/" + noti_file);
					fos.write(data);
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					try {
						if (fos != null)
							fos.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				File file = new File(path + "/" + oldNotiFile);
				file.delete();
			}
			mav.setViewName("redirect:/adminNoti.do");
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 공지사항 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNotiDelete.do")
	public ModelAndView deleteAdminNoti(int noti_num, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/admin/board/noticeDelete");
		String path = request.getSession().getServletContext().getRealPath("/upload");
		String noti_file = dao.selectNoti(noti_num).getNoti_file();
		int re = dao.deleteNoti(noti_num);
		if (re == 1) {
			mav.setViewName("redirect:/adminNoti.do");
			File file = new File(path + "/" + noti_file);
			file.delete();
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 공지사항 조회 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminNotiDetail.do")
	public ModelAndView detailAdminNoti(int noti_num) {
		ModelAndView mav = new ModelAndView("/admin/board/noticeDetail");
		mav.addObject("noti", dao.selectNoti(noti_num));
		return mav;
	}

	/**
	 * localhost/admin_faq.do -> admin/faq.jsp 관리자 도움말관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminFaq.do")
	public ModelAndView selectAdminFaq() {
		ModelAndView mav = new ModelAndView("/admin/board/faq");
		List<FaqVo> list = dao.selectAllFaq();
		mav.addObject("list", list);
		return mav;
	}

	/**
	 * 도움말 등록 form
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminFaqInsert.do", method = RequestMethod.GET)
	public ModelAndView insertFaqForm() {
		ModelAndView mav = new ModelAndView("/admin/board/faqInsert");
		return mav;
	}

	/**
	 * 도움말 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminFaqInsert.do", method = RequestMethod.POST)
	public ModelAndView insertAdminFaq(FaqVo faq, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/admin/board/faqInsert");
		String path = request.getSession().getServletContext().getRealPath("/upload");
		MultipartFile uploadFile = faq.getUploadFile();
		String faq_file = uploadFile.getOriginalFilename();
		if (uploadFile != null && !"".equals(faq_file)) {
			FileOutputStream fos = null;
			faq_file = RenameUtil.getRename(faq_file, path);
			try {
				byte[] data = uploadFile.getBytes();
				fos = new FileOutputStream(path + "/" + faq_file);
				fos.write(data);
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					if (fos != null)
						fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		faq.setFaq_file(faq_file);
		int re = dao.insertFaq(faq);
		if (re == 1) {
			mav.setViewName("redirect:/adminFaq.do");
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 도움말 수정 form by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminFaqUpdate.do", method = RequestMethod.GET)
	public ModelAndView updateFaqForm(int faq_num) {
		ModelAndView mav = new ModelAndView("/admin/board/faqUpdate");
		mav.addObject("faq", dao.selectFaq(faq_num));
		return mav;
	}

	/**
	 * 도움말 수정 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminFaqUpdate.do", method = RequestMethod.POST)
	public ModelAndView updateAdminFaq(FaqVo faq, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/admin/board/faqUpdate");
		String path = request.getSession().getServletContext().getRealPath("/upload");
		String oldFileNmae = faq.getFaq_file();

		MultipartFile uploadFile = faq.getUploadFile();
		String faq_file = uploadFile.getOriginalFilename();
		if (!"".equals(faq_file)) {
			faq_file = RenameUtil.getRename(faq_file, path);
			faq.setFaq_file(faq_file);
		}

		FileOutputStream fos = null;
		int re = dao.updateFaq(faq);
		if (re == 1) {
			if (!"".equals(faq_file)) {

				try {
					byte[] data = uploadFile.getBytes();
					fos = new FileOutputStream(path + "/" + faq_file);
					fos.write(data);
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					try {
						if (fos != null)
							fos.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				File file = new File(path + "/" + oldFileNmae);
				file.delete();
			}
			mav.setViewName("redirect:/adminFaqDetail.do?faq_num=" + faq.getFaq_num());
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 도움말 삭제 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminFaqDelete.do")
	public ModelAndView deletesAdminFaq(int faq_num, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/admin/board/faqDelete");
		FaqVo faq = dao.selectFaq(faq_num);
		String path = request.getSession().getServletContext().getRealPath("/upload");
		String faq_file = faq.getFaq_file();
		int re = dao.deleteFaq(faq_num);
		if (re == 1) {
			File file = new File(path + "/" + faq_file);
			file.delete();
			mav.setViewName("redirect:/adminFaq.do");
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 도움말 조회 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminFaqDetail.do")
	public ModelAndView detailAdminFaq(int faq_num) {
		ModelAndView mav = new ModelAndView("/admin/board/faqDetail");
		mav.addObject("faq", dao.selectFaq(faq_num));
		return mav;
	}

	/**
	 * loaclhost/admin_answer.do -> admin/admAns.jsp 관리자 1대1문의관리 페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminAnswer.do")
	public ModelAndView selectAdminAns() {
		ModelAndView mav = new ModelAndView("/admin/board/admAns");
		List<AdmAnsVo> list = dao.selectAllAdmQue();
		mav.addObject("list", list);
		return mav;
	}

	/**
	 * 1대1문의 조회 by 박권익
	 * 
	 * @param adm_que_num
	 * @return
	 */
	@RequestMapping("/adminAnswerDetail.do")
	public ModelAndView insertAnsForm(int adm_que_num) {
		ModelAndView mav = new ModelAndView("/admin/board/admAnsDetail");
		mav.addObject("question", dao.selectAdmQue(adm_que_num));
		AdmAnsVo admAns = dao.selectAdmAns(adm_que_num);
		if (admAns != null) {
			mav.addObject("answer", dao.selectAdmAns(adm_que_num));
		}
		return mav;
	}

	/**
	 * 1대1 문의 답변 등록 form by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminAnswerInsert.do", method = RequestMethod.GET)
	public ModelAndView insertAnsForm(int adm_que_num, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/admin/board/admAnsInsert");
		mav.addObject("question", dao.selectAdmQue(adm_que_num));
		return mav;
	}

	/**
	 * 1대1문의 답변 등록 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminAnswerInsert.do", method = RequestMethod.POST)
	public ModelAndView insertAdminAns(AdmAnsVo admAns, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/admin/board/admAnsInsert");
		String path = request.getSession().getServletContext().getRealPath("/upload");
		MultipartFile uploadFile = admAns.getUploadFile();
		String adm_ans_file = uploadFile.getOriginalFilename();
		if (uploadFile != null && !"".equals(adm_ans_file)) {
			FileOutputStream fos = null;
			adm_ans_file = RenameUtil.getRename(adm_ans_file, path);
			try {
				byte[] data = uploadFile.getBytes();
				fos = new FileOutputStream(path + "/" + adm_ans_file);
				fos.write(data);
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					if (fos != null)
						fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		admAns.setAdm_ans_file(adm_ans_file);

		int re1 = dao.insertAdmAns(admAns);
		int re2 = dao.updateAdmQueCheck(admAns.getAdm_que_num());
		if (re1 == 1 && re2 == 1) {
			mav.setViewName("redirect:/adminAnswer.do");
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 1대1문의 답변 수정 form by 박권익
	 * 
	 * @return
	 */
	@RequestMapping(value = "/adminAnswerUpdate.do", method = RequestMethod.GET)
	public ModelAndView updateAnsForm(int adm_que_num) {
		ModelAndView mav = new ModelAndView("/admin/board/admAnsUpdate");
		mav.addObject("question", dao.selectAdmQue(adm_que_num));
		mav.addObject("answer", dao.selectAdmAns(adm_que_num));
		return mav;
	}

	/**
	 * 1대1문의 답변 수정 by 박권익
	 * 
	 * @param admAns
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/adminAnswerUpdate.do", method = RequestMethod.POST)
	public ModelAndView updateAdminAns(AdmAnsVo admAns, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String oldFileName = admAns.getAdm_ans_file();
		String path = request.getSession().getServletContext().getRealPath("/upload");
		MultipartFile uploadFile = admAns.getUploadFile();
		String adm_ans_file = uploadFile.getOriginalFilename();
		if (!"".equals(adm_ans_file)) {
			adm_ans_file = RenameUtil.getRename(adm_ans_file, path);
			admAns.setAdm_ans_file(adm_ans_file);
		}

		FileOutputStream fos = null;
		int re = dao.updateAdmAns(admAns);
		if (re == 1) {
			if (!"".equals(adm_ans_file)) {
				try {
					byte[] data = uploadFile.getBytes();
					fos = new FileOutputStream(path + "/" + adm_ans_file);
					fos.write(data);
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					try {
						if (fos != null)
							fos.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				} // try-finally
				File file = new File(path + "/" + oldFileName);
				file.delete();
			} // if
			mav.setViewName("redirect:/adminAnswerDetail.do?adm_que_num=" + admAns.getAdm_que_num());
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}
	
	/**
	 * 기획전 목록 by 박권익
	 * @return
	 */
	@RequestMapping("/adminTheme.do")
	public ModelAndView selectAdminTheme() {
		ModelAndView mav = new ModelAndView("/admin/board/theme");
		mav.addObject("list", dao.selectAllTheme());
		return mav;
	}
	
	/**
	 * 기획적 삭제 by 박권익
	 * @return
	 */
	@RequestMapping("/adminThemeDelete.do")
	public ModelAndView deleteAdminTheme(int theme_num) {
		ModelAndView mav = new ModelAndView("/admin/board/themeDelete");
		int re = dao.deleteTheme(theme_num);
		if(re==1) {
			mav.setViewName("redirect:/adminTheme.do");
		} else {
			mav.setViewName("redirect:/adminError.do");
		}
		return mav;
	}

	/**
	 * 
	 * /** 관리자 에러페이지 by 박권익
	 * 
	 * @return
	 */
	@RequestMapping("/adminError.do")
	public ModelAndView error() {
		ModelAndView mav = new ModelAndView("/admin/error");
		return mav;
	}

	/**
	 * 파일 다운로드<br>
	 * jsp에서 jstl로 첨부파일 유무 확인 후 a href로 link<br>
	 * 첨부파일 있는 경우 not null, 첨부파일 없는 경우 null by 박권익
	 * 
	 * @param filename
	 * @param request
	 * @param response
	 */
	@RequestMapping("/file/filedownload")
	public void fileDownload(HttpServletRequest request, HttpServletResponse response) {
		String path = request.getSession().getServletContext().getRealPath("/upload");
		String fname = request.getParameter("filename"); //QueryString으로 다운로드 파일이름 받아오기
		File file = new File(path + "/" + fname);
		FileInputStream fis = null; // 파일 읽어오기
		BufferedInputStream bis = null; // 파일 읽어오기
		ServletOutputStream sos = null; // InputStream으로 읽어오는 데이터를 ServletOutputStream을 이용하여 출력
		try {
			fis = new FileInputStream(file);
			bis = new BufferedInputStream(fis);
			sos = response.getOutputStream();
			String reFilename = ""; // 다운받는 파일의 이름 저장
			// IE로 실행할 경우는 따로 인코딩 해주어야 한다.
			// IE는 request의 헤더에 MSIE 또는 Trident가 포함되어 있다.
			// IE를 제외한 다른 브라우저로 실행할 경우 한글이 깨지는 것을 방지하기 위해 인코딩
			boolean isMSIE = request.getHeader("user-agent").indexOf("MSIE") != -1
					|| request.getHeader("user-agent").indexOf("Trident") != -1;
			if (isMSIE) {
				reFilename = URLEncoder.encode(fname, "utf-8");
				reFilename = reFilename.replaceAll("\\+", "%20");
			} else {
				reFilename = new String(fname.getBytes("utf-8"), "ISO-8859-1");
			}
			// response의 ContentType과 ContentLength를 설정하고 헤더를 추가한다.
			response.setContentType("application/octet-stream;charset=utf-8");
			response.addHeader("Content-Disposition", "attachment;filename=\"" + reFilename + "\"");
			response.setContentLength((int) file.length());
			int read = 0;
			while ((read = bis.read()) != -1) {
				sos.write(read);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (sos != null)
					sos.close();
				if (bis != null)
					bis.close();
				if (fis != null)
					fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
