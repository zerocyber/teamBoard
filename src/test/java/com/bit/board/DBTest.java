package com.bit.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class DBTest {

	@Autowired
	private MemberService memberSerivice;

	@Test
	public void insertTest() {
		
		for(int i=0; i< 30; i++) {
			
			MemberDto memberDto = new MemberDto();
			memberDto.setMid("유저"  + i);
			memberDto.setMpassword("1234");
			memberDto.setMname("이름" + i);
			memberDto.setBirthday("1989-07-01");
			memberDto.setGender("남자" + i);
			memberDto.setPhone("010-1234-5678");
			memberDto.setZipcode("120-859");
			memberDto.setAddress("서울시 서대문구 홍제동");
			
			memberSerivice.joinMember(memberDto);
		}

	}

	@Test
	public void timeTest() {
		System.out.println(memberSerivice.getTime());
	}
}
