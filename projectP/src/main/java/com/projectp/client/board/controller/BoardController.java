package com.projectp.client.board.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.projectp.client.board.service.BoardService;
import com.projectp.client.board.vo.BoardVO;
import com.projectp.client.member.service.MemberService;
import com.projectp.client.member.vo.MemberVO;

@Controller
@RequestMapping(value="board")
public class BoardController {
	Logger logger = Logger.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/main.do")
	public ModelAndView boardList(){
		ModelAndView mav = new ModelAndView();
		List<MemberVO> memberList = memberService.memberList();
		mav.addObject("memberList", memberList);
		
		List<BoardVO> boardList = boardService.boardList();
		mav.addObject("boardList", boardList);
		mav.setViewName("board/main");
		
		return mav;
	}
}
