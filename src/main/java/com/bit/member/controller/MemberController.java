package com.bit.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.member.model.MemberDto;
import com.bit.member.service.MemberService;

@RequestMapping("/member")
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String main() {
		return "member/main";
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {

		/*
		 * List<MemberDto> list = memberService.getMemberList();
		 * 
		 * model.addAttribute("list", list);
		 */
		return "member/list";
	}

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "member/join";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(MemberDto memberDto) {

		memberService.joinMember(memberDto);
		return "member/login";

	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {

		return "member/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(MemberDto memberDto, HttpSession session) {

		String redirectUri = (String) session.getAttribute("referer");
		System.out.println(redirectUri);

		MemberDto userInfo = memberService.login(memberDto);
		System.out.println(userInfo.getMname());

		session.setAttribute("userInfo", userInfo);

		if (redirectUri == null) {
			return "member/main";
		}
		return redirectUri;
	}
}
