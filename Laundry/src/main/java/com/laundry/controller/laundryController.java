package com.laundry.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.laundry.domain.laundryVO;
import com.laundry.domain.memberVO;
import com.laundry.service.laundryService;

@Controller
@RequestMapping("/laundry/*")
public class laundryController {

	@Inject
	private laundryService service;

	// 관리자페이지
	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public void getmanager() throws Exception {

	}

	// 가입
	@RequestMapping(value = "/m_join", method = RequestMethod.GET)
	public void getjoin() throws Exception {

	}

	// 가입
	@RequestMapping(value = "/m_join", method = RequestMethod.POST)
	public String posttjoin(memberVO vo) throws Exception {
		service.join(vo);
		return "home";
	}

	// 로그인
	@RequestMapping(value = "/m_login", method = RequestMethod.GET)
	public void getlogin() throws Exception {

	}

	// 로그인
	@RequestMapping(value = "/m_login", method = RequestMethod.POST)
	public String postSignin(memberVO vo, HttpServletRequest req,
			@RequestParam(value = "userid", required = false, defaultValue = "") String userid) throws Exception {

		memberVO login = service.login(vo);
		HttpSession session = req.getSession();

		if (login != null) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null);

			return "redirect:/laundry/m_login";
		}

		return "redirect:/laundry/m_write?userid" + userid;
	}

	// 회원주문작성
	@RequestMapping(value = "/m_write", method = RequestMethod.GET)
	public void getm_write() throws Exception {

	}

	// 회원주문작성
	@RequestMapping(value = "/m_write", method = RequestMethod.POST)
	public String posttm_wirte(laundryVO vo) throws Exception {

		service.mwrite(vo);
		return "home";
	}

	// 회원목록
	@RequestMapping(value = "/m_list", method = RequestMethod.GET)
	public void getm_list(Model model) throws Exception {

		List<memberVO> mlist = null;
		mlist = service.mlist();
		model.addAttribute("mlist", mlist);
	}

	// 등록선택화면
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getwrite() throws Exception {

	}

	// 조회선택화면
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public void getsearch() throws Exception {

	}

	// 비회원주문목록
	@RequestMapping(value = "/nm_orderlist", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {

		List<laundryVO> list = null;
		list = service.list();
		model.addAttribute("list", list);
	}

	// 회원주문목록
	@RequestMapping(value = "/m_orderlist", method = RequestMethod.GET)
	public void getmoList(Model model) throws Exception {

		List<laundryVO> molist = null;
		molist = service.molist();
		model.addAttribute("molist", molist);
	}

	// 비회원작성
	@RequestMapping(value = "/nm_write", method = RequestMethod.GET)
	public void getWirte() throws Exception {

	}

	// 비회원주문작성
	@RequestMapping(value = "/nm_write", method = RequestMethod.POST)
	public String posttWirte(laundryVO vo) throws Exception {
		service.write(vo);
		return "home";
	}

	// 비회원주문 검색
	@RequestMapping(value = "/nm_search", method = RequestMethod.GET)
	public void getSearch(Model model,
			@RequestParam(value = "phone3", required = false, defaultValue = "") String tell3) throws Exception {

		List<laundryVO> search = null;
		System.out.println("==>" + tell3);

		search = service.search(tell3);

		model.addAttribute("search", search);

	}

	// 회원주문 검색
	@RequestMapping(value = "/m_search", method = RequestMethod.GET)
	public void getmSearch(Model model,
			@RequestParam(value = "userid", required = false, defaultValue = "") String userid) throws Exception {

		List<memberVO> msearch = null;
		System.out.println("==>" + userid);

		msearch = service.msearch(userid);

		model.addAttribute("msearch", msearch);

	}

	// 비회원주문삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("cno") int cno) throws Exception {

		service.delete(cno);

		return "redirect:/laundry/nm_orderlist";
	}

	// 비회원주문완료
	@RequestMapping(value = "/complete", method = RequestMethod.GET)
	public String getcomplete(@RequestParam("cno") int cno) throws Exception {

		service.complete(cno);

		return "redirect:/laundry/nm_orderlist";
	}

	// 회원삭제
	@RequestMapping(value = "/mdelete", method = RequestMethod.GET)
	public String getmDelete(@RequestParam("userid") String userid) throws Exception {

		service.mdelete(userid);

		return "redirect:/laundry/m_list";
	}

	// 회원주문삭제
	@RequestMapping(value = "/modelete", method = RequestMethod.GET)
	public String getmoDelete(@RequestParam("mono") int mono) throws Exception {

		service.modelete(mono);

		return "redirect:/laundry/m_orderlist";
	}

	// 비회원주문완료
	@RequestMapping(value = "/mocomplete", method = RequestMethod.GET)
	public String getmocomplete(@RequestParam("mono") int mono) throws Exception {

		service.mocomplete(mono);

		return "redirect:/laundry/m_orderlist";
	}

}