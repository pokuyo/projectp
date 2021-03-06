package com.projectp.client.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.projectp.client.board.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<BoardVO> boardList() {
		return session.selectList("boardList");
	}
	
}
