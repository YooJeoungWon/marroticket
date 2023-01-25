package com.marroticket.tmember.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/theater")
public class TmemberController {
	
	@GetMapping("")
	public String home() {
		return "tmemberhome";
	}

	// 연극 등록
	@GetMapping("/registePlay")
	public String registePlay() {
		return "registe.registeAgree";
	}

	// 등록한 연극
	@GetMapping("/playRegisteInfo")
	public String playRegisteInfo() {
		return "info.tMemberPlayRegisteInfo";
	}

	// 극단 정산
	@GetMapping("/tmemberPayment")
	public String theaterPayment() {
		return "info.tMemberPayment";
	}

	// 극단 정보 관리
	@GetMapping("/tmembermypage")
	public String theaterMemberInfo() {
		return "info.tMemberMemberInfo";
	}


	// 극단 이용약관 페이지
	@GetMapping("/tMemberAgreement")
	public String tMemberAgreement() {
		System.out.println("tMemberAgreement 호출 완료");
		return "tMemberJoin.tMemberAgreement";
	}
	// 극단 회원 가입 페이지
	@GetMapping("/tMemberJoinForm")
	public String tMemberJoinForm() {
		System.out.println("tMemberJoinForm 호출 완료");
		return "tMemberJoin.tMemberJoinForm";
	}
	
	// 극단 공지사항, faq

	//극단회원 FAQ 
	// 목록
	@GetMapping("/tfaqList")
	public String tfaqList() {
		return "tserviceCenter.tfaqList";
	}
	// 극단회원 Notice
	// 목록
	@GetMapping("/noticeList")
	public String noticeList() {
		return "tserviceCenter.notice";
	}
	//footer 
	@GetMapping("/privacy")
	public String privacy() {
		return "tmember.footer.privacy";
	}
	@GetMapping("/companyinfo")
	public String companyinfo() {
		return "tmember.footer.companyinfo";
	}
	@GetMapping("/termsofuse")
	public String termsofuse() {
		return "tmember.footer.termsofuse";
	}
}
