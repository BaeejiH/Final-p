package com.gd.Final.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.AdminDto;
import com.gd.Final.dto.UserDto;

@Mapper
public interface loginMapper {

	// 사용자 로그인
	UserDto UserLoginCheck(String userId, String userPw);

	// 관리자 로그인
	AdminDto AdminLoginCheck(String adminId, String adminPw);

	// 아이디 중복검사
	String selectUserId(String userId);

	// 아이디 찾기
	String CheckUserId(String email);

	// 비밀번호 찾기
	String CheckUserPw();
}
