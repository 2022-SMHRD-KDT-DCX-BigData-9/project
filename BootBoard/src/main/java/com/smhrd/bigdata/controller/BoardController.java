package com.smhrd.bigdata.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.bigdata.converter.ImageConverter;
import com.smhrd.bigdata.converter.ImageToBase64;
import com.smhrd.bigdata.entity.BootBoard;
import com.smhrd.bigdata.service.BoardService;

@Controller
public class BoardController {
	dddd
	@Autowired
	BoardService service;

	@PostMapping("/board/write")
	public String write(BootBoard b, @RequestPart("photo") MultipartFile photo) {
		System.out.println(photo.getOriginalFilename()); 
		// 파일 이름이 겹치지 않도록 -> UUID사용(시스템적으로 절대 겹치지 않는 문자열을 생성)
		// UUID+OriginalFilename		
		String newFileName = UUID.randomUUID().toString() + photo.getOriginalFilename();
		
		// 지정한 경로에 이미지 파일 저장(경로는 application.properties에)
		// 런타임 오류 : 코드가 실행되었을 때 발생하는 오류 -> 예외처리 (try~catch)
		try {
			photo.transferTo(new File(newFileName));			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		b.setImg(newFileName);  // 새로만들어준 이름으로 img 필드 초기화
		
		service.write(b);
		
		return "redirect:/";
	}
	
	// a태그로 요청하는 것은 getmapping으로
	@GetMapping("/board/content/{idx}") // {} : 매번 바뀐다는 의미(식별을 위한 식별자를 가운데에 넣어서 이해하기 쉽게하기)
	public String content(@PathVariable("idx") long idx, Model model) throws IOException { // @PathVariable("식별자" 받는 타입 변수) : 경로 받아올떄 사용하는 어노테이션
		BootBoard contents = service.content(idx);
		
		// 특정 경로에 저장되어 있는 파일 가져오기(img-파일이름 활용)
		File file = new File("c:\\uploadImage\\" + contents.getImg());
		// -> 문자열 형태로 변환(base64 형식으로 인코딩) -> 컨버터 만들어야함(따로 패키지 생성)
		
		// 상위형태로 업캐스팅하여 많이 사용함(다양하게 사용할 수 있음 + 인터페이스는 구현못함)
		ImageConverter<File, String> converter= new ImageToBase64();
		String fileStringValue = converter.convert(file);
		contents.setImg(fileStringValue);
		model.addAttribute("board", contents);
		return "boardcontent";
	}
}
