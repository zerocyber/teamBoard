package com.bit.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberService;
import com.bit.utils.Criteria;
import com.bit.utils.PageMaker;

@RequestMapping("/member")
@RestController
public class MemberRestController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("/loginCheck")
	public int login(MemberDto memberDto) {
		int result = memberService.loginCheck(memberDto);
		return result;
	}
	
	@RequestMapping(value="/memberList/{searchKeyword}/{page}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> memberList(@PathVariable("searchKeyword") String searchKeyword
														  ,@PathVariable("page") int page){
		ResponseEntity<Map<String, Object>> entity = null;
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("searchKeyword", searchKeyword);
		paramMap.put("page", page);
		
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		PageMaker pm = new PageMaker();
		pm.setCri(cri);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<MemberDto> list = memberService.getMemberList(paramMap, cri);	
		map.put("list", list);
		
		int totalCount = memberService.getTotalCount(searchKeyword);
		
		pm.setTotal(totalCount);
		
		map.put("pm", pm);
	
		return entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	
	
	

}
