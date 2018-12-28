package com.bit.member.service;

import java.util.List;
import java.util.Map;

import com.bit.member.model.MemberDto;
import com.bit.utils.Criteria;

public interface MemberService {
	
	List<MemberDto> getMemberList(Map<String, Object> paramMap, Criteria cri);
	void joinMember(MemberDto board_MemberDto);
	void modifyMember(MemberDto board_MemberDto);
	void deleteMember(int mid);
	
	int loginCheck(MemberDto memberDto);
	MemberDto login(MemberDto memberDto);

	int getTotalCount(String searchKeyword);
}
