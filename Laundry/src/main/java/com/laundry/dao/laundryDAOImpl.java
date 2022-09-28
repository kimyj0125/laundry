package com.laundry.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.laundry.domain.laundryVO;
import com.laundry.domain.memberVO;

@Repository
public class laundryDAOImpl implements laundryDAO {

	@Inject
	private SqlSession sql;

	private static String namespace = "com.laundry.mappers.laundry";

	// 가입
	@Override
	public void join(memberVO vo) throws Exception {
		// TODO Auto-generated method stub

		sql.insert(namespace + ".join", vo);

	}

	// 회원목록
	@Override
	public List<memberVO> mlist() throws Exception {

		return sql.selectList(namespace + ".mlist");

	}

	// 로그인
	@Override
	public memberVO login(memberVO vo) {
		return sql.selectOne(namespace + ".login", vo);
	}

	// 비회원주문목록
	@Override
	public List<laundryVO> list() throws Exception {

		return sql.selectList(namespace + ".list");

	}

	// 회원주문목록
	@Override
	public List<laundryVO> molist() throws Exception {

		return sql.selectList(namespace + ".molist");

	}

	// 비회원검색
	@Override
	public List<laundryVO> search(String tell3) throws Exception {

		HashMap<String, Object> data = new HashMap<String, Object>();

		data.put("tell3", tell3);

		return sql.selectList(namespace + ".search", data);
	}

	// 회원검색
	@Override
	public List<memberVO> msearch(String userid) throws Exception {

		HashMap<String, Object> data = new HashMap<String, Object>();

		data.put("userid", userid);

		return sql.selectList(namespace + ".msearch", data);
	}

	// 비회원주문 작성
	@Override
	public void write(laundryVO vo) throws Exception {
		// TODO Auto-generated method stub

		sql.insert(namespace + ".write", vo);

	}

	// 회원주문 작성
	@Override
	public void mwrite(laundryVO vo) throws Exception {
		// TODO Auto-generated method stub

		sql.insert(namespace + ".mwrite", vo);

	}

	// 비회원주문 삭제
	public void delete(int cno) throws Exception {
		sql.delete(namespace + ".delete", cno);
	}

	// 비회원주문 완료
	public void complete(int cno) throws Exception {
		sql.update(namespace + ".complete", cno);
	}

	// 회원주문 삭제
	public void modelete(int mono) throws Exception {
		sql.delete(namespace + ".modelete", mono);
	}

	// 회원주문 완료
	public void mocomplete(int mono) throws Exception {
		sql.update(namespace + ".mocomplete", mono);
	}

	// 회원 삭제
	public void mdelete(String userid) throws Exception {
		sql.delete(namespace + ".mdelete", userid);
	}

}