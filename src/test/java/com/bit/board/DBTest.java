package com.bit.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
		
		BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
		for(int i=1; i < 200; i++) {
			
			
			MemberDto memberDto = new MemberDto();
			memberDto.setMid("테스트"  + i);
		    String pwd =  bcryptPasswordEncoder.encode("abc12345");
		    memberDto.setMpassword(pwd);
			memberDto.setMname("유저" + i);
			memberDto.setBirthday("2018-01-02");
			memberDto.setGender("남자");
			memberDto.setPhone("010-1234-5678");
			memberDto.setZipcode("123-456");
			memberDto.setAddress("서울시 강남구");
			
			memberSerivice.joinMember(memberDto);
		}
	}

	@Test
	public void timeTest() {
		System.out.println(memberSerivice.getTime());
	}
}
