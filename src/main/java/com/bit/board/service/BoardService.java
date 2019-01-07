package com.bit.board.service;

import java.util.List;

import com.bit.board.model.BoardDto;

public interface BoardService {
	List<BoardDto> list();
	void write(BoardDto boardDto);
	BoardDto view(int no);

}
