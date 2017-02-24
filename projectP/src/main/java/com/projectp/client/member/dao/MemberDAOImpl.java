package com.projectp.client.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.projectp.client.member.controller.MemberController;
import com.projectp.client.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	Logger logger = Logger.getLogger(MemberController.class);
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<MemberVO> memberList() {
		return session.selectList("memberList");
	}

}
