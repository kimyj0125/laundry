package com.laundry.service;

import java.util.List;


import com.laundry.domain.laundryVO;
import com.laundry.domain.memberVO;

public interface laundryService {

	// 가입
	public void join(memberVO vo) throws Exception;

	// 회원목록
	public List<memberVO> mlist() throws Exception;

	// 로그인
	public memberVO login(memberVO vo) throws Exception;

	// 회원주문목록
	public List<laundryVO> molist() throws Exception;

	// 비회원주문목록
	public List<laundryVO> list() throws Exception;

	// 비회원검색
	public List<laundryVO> search(String tell3) throws Exception;

	// 회원검색
	public List<memberVO> msearch(String userid) throws Exception;

	// 비회원주문 작성
	public void write(laundryVO vo) throws Exception;

	// 회원주문 작성
	public void mwrite(laundryVO vo) throws Exception;

	// 비회원주문 삭제
	public void delete(int cno) throws Exception;

	// 비회원주문 완료
	public void complete(int cno) throws Exception;

	// 회원주문 삭제
	public void modelete(int mono) throws Exception;

	// 회원주문 완료
	public void mocomplete(int mono) throws Exception;

	// 회원 삭제
	public void mdelete(String userid) throws Exception;

}
