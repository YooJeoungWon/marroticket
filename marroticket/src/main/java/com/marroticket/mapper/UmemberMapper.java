package com.marroticket.mapper;

import com.marroticket.umember.member.domain.UmemberVO;

public interface UmemberMapper {
	//아이디찾기
	public String findId(UmemberVO umember) throws Exception;
	public String findPassword(UmemberVO umember) throws Exception;
}
