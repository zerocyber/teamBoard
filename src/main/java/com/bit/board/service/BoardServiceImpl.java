package com.bit.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.board.dao.BoardDao;
import com.bit.board.model.BoardDto;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardDto> list() {
		return sqlSession.getMapper(BoardDao.class).list();
	}

	@Override
	public void write(BoardDto boardDto) {
		sqlSession.getMapper(BoardDao.class).write(boardDto);
	}

	@Override
	public BoardDto view(int no) {
		return sqlSession.getMapper(BoardDao.class).view(no);
	}

	
}
