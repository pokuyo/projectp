package com.projectp.client.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.projectp.client.board.dao.BoardDAO;
import com.projectp.client.board.vo.BoardVO;

@Service
@Transactional
public class BoardServiceImpl implements BoardService {

	@Autowired 
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> boardList() {
		List<BoardVO> boardList = boardDAO.boardList();
		return boardList;
	}

}
