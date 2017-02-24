package com.projectp.client.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.projectp.client.member.dao.MemberDAO;
import com.projectp.client.member.vo.MemberVO;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List<MemberVO> memberList() {
		List<MemberVO> memberList = memberDAO.memberList();
		return memberList;
	}
	
}
