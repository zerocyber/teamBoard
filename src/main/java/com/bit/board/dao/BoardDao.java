package com.bit.board.dao;

import java.util.List;

import com.bit.board.model.BoardDto;

public interface BoardDao {
	List<BoardDto> list();
	void write(BoardDto boardDto);
	BoardDto view(int no);
}
