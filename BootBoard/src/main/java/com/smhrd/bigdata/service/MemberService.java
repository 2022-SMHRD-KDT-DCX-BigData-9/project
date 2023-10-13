package com.smhrd.bigdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.BootMember;
import com.smhrd.bigdata.repository.MemberRepository;

@Service
public class MemberService {
	
	@Autowired
	MemberRepository repo;
	
	public BootMember login(BootMember member) {
		// select * from where id =? and pw =? -> 이런 기능은 없음(repository에 만들어야함)
		return repo.findByIdAndPw(member.getId(), member.getPw());		
	}
}
