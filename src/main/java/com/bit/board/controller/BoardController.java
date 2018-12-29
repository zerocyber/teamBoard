package com.bit.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.member.model.MemberDto;


@Controller
@RequestMapping("/board*")
public class BoardController {

	
	@GetMapping("/write")
	public void write() {
		System.out.println("write get...............");
	}
	
	@PostMapping("/write")
	public void write(MemberDto memberDto) {
		System.out.println("write post...............");
		
		
	}
	
}
