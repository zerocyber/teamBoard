package com.bit.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bit.member.model.MemberDto;
import com.bit.utils.Criteria;

public interface MemberDao {
	
	List<MemberDto> getMemberList(@Param("paramMap") Map<String, Object> paramMap, @Param("cri") Criteria cri);
	
	void joinMember(MemberDto memberDto);
	void modifyMember(MemberDto memberDto);
	void deleteMember(int mid);
	
	int loginCheck(MemberDto memberDto);
	MemberDto login(MemberDto memberDto);
	
	int getTotalCount(String searchKeyword);
	
	String getTime();
}
