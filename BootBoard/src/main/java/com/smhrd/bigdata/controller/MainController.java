package com.smhrd.bigdata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.bigdata.entity.BootBoard;
import com.smhrd.bigdata.entity.BootMember;
import com.smhrd.bigdata.service.BoardService;

@Controller
public class MainController {

	
	// main 변경

	// 이 주석이 보이시나요...?
	// 주석 

	@Autowired
	BoardService service;
	
	@GetMapping("/")
	public String index(HttpSession session, Model model) {
		BootMember member = (BootMember)session.getAttribute("loginMember");
		// loginMember 세션값 확인 -> 0(게시물 정보 가져오기) / X (바로 index로 이동)
		if(member != null ) {
			List<BootBoard> list = service.boardList();
			model.addAttribute("list", list);
		}
		return "index";
	}
	
	@GetMapping("/boardform")
	public String boardForm() {
		return "boardform";
	}
}
