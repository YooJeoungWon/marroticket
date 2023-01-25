package com.marroticket.common.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController { // 로그인 관련 controller

	// 로그인 유형 선택
	@GetMapping("")
	public String login() {
		return "loginChoose";
	}
	// 아이디 찾기 유형 선택
	@GetMapping("/idFindChoose")
	public String idFindChoose() {
		return "idFindChoose";
	}
	// 비밀번호 찾기 유형 선택
	@GetMapping("/passwordFindChoose")
	public String passwordFindChoose() {
		return "passwordFindChoose";
	}
	

	// 일반회원로그인
	@GetMapping("/umemberlogin")
	public String userlogin() {
		System.out.println("umemberLogin logincontroller 호출 완료");
		return "umemberLogin";
	}

	// 일반회원 아이디찾기
	@GetMapping("/umemberFindId")
	public String userFindId() {
		System.out.println("logincontroller 호출 완료");
		return "umemberFind.Id";
	}
	// 일반회원 비밀번호찾기
	@GetMapping("/umemberFindPassword")
	public String userFindPassword() {
		System.out.println("logincontroller 호출 완료");
		return "umemberFind.Password";
	}

	// 극단회원로그인
	@GetMapping("/tmemberlogin")
	public String theaterlogin() {
		System.out.println("tMemberLogin logincontroller 호출 완료");
		return "tmemberLogin";
	}

	// 극단회원 아이디찾기
	@GetMapping("/tmemberFindId")
	public String tmemberFindId() {
		System.out.println("logincontroller 호출 완료");
		return "tmemberFind.Id";
	}
	// 극단회원 비밀번호찾기
	@GetMapping("/tmemberFindPassword")
	public String tmemberFindPassword() {
		System.out.println("logincontroller 호출 완료");
		return "tmemberFind.Password";
	}
}
