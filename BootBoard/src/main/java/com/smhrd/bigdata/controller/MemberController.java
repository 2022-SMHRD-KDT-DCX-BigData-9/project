package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.entity.BootMember;
import com.smhrd.bigdata.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@PostMapping("/member/login")
	public String login(BootMember member, HttpSession session) {
		BootMember result = service.login(member);
		if(result != null) {
			session.setAttribute("loginMember", result);
		} else {
			System.out.println("로그인실패");
		}
		return "redirect:/";
	}
	
	@GetMapping("/member/logout")
	public String logout(HttpSession session) {
		// session.removeAtrribute("loginMember");도 가능
		session.invalidate();
		return "redirect:/";
	}
	
	
}
