package com.laundry.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.laundry.dao.laundryDAO;
import com.laundry.domain.laundryVO;
import com.laundry.domain.memberVO;

@Service
public class laundryServiceImpl implements laundryService {

	@Inject
	private laundryDAO dao;

	// 가입
	@Override
	public void join(memberVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.join(vo);
	}

	// 회원목록
	@Override
	public List<memberVO> mlist() throws Exception {

		return dao.mlist();
	}

	// 로그인
	public memberVO login(memberVO vo) throws Exception {
		return dao.login(vo);
	}

	// 비회원주문목록
	@Override
	public List<laundryVO> list() throws Exception {

		return dao.list();
	}

	// 회원주문목록
	@Override
	public List<laundryVO> molist() throws Exception {

		return dao.molist();
	}

	// 비회원검색
	@Override
	public List<laundryVO> search(String tell3) throws Exception {
		return dao.search(tell3);
	}

	// 회원검색
	@Override
	public List<memberVO> msearch(String memberVO) throws Exception {
		return dao.msearch(memberVO);
	}

	// 비회원주문 작성
	@Override
	public void write(laundryVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.write(vo);
	}

	// 회원주문 작성
	@Override
	public void mwrite(laundryVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.mwrite(vo);
	}

	// 비회원주문 삭제
	public void delete(int cno) throws Exception {
		dao.delete(cno);
	}

	// 비회원주문 완료
	public void complete(int cno) throws Exception {
		dao.complete(cno);
	}

	// 회원주문 삭제
	public void modelete(int mono) throws Exception {
		dao.modelete(mono);
	}

	// 회원주문 완료
	public void mocomplete(int mono) throws Exception {
		dao.mocomplete(mono);
	}

	// 회원 삭제
	public void mdelete(String userid) throws Exception {
		dao.mdelete(userid);
	}
}