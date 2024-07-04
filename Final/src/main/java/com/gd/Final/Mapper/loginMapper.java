package com.gd.Final.Mapper;

import org.apache.ibatis.annotations.Mapper;


import com.gd.Final.dto.AdminDto;
import com.gd.Final.dto.UserDto;

@Mapper
public interface loginMapper {
	
	// 사용자 로그인
	UserDto UserLoginCheck (String userId,String userPw);
	
	// 관리자 로그인
	AdminDto AdminLoginCheck (String adminId, String adminPw);
	// 
}
