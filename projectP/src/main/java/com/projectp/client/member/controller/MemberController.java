package com.projectp.client.member.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.projectp.client.member.service.MemberService;
import com.projectp.client.member.vo.MemberVO;

@Controller
@RequestMapping(value="member")
public class MemberController {
	Logger logger = Logger.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/main.do")
	public ModelAndView memberList(){
		logger.info("memberList ready");
		ModelAndView mav = new ModelAndView();
		
		List<MemberVO> memberList = memberService.memberList();
		mav.addObject("memberList", memberList);
		mav.setViewName("member/memberList");

		return mav;
	}
	
}
