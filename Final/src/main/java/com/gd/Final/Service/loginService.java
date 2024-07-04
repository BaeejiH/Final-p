package com.gd.Final.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.loginMapper;
import com.gd.Final.dto.AdminDto;
import com.gd.Final.dto.UserDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class loginService {
	@Autowired
	loginMapper loginmapper;
	
	// 사용자 로그인
	public UserDto Userlogin(String userId, String userPw) {
		
		return loginmapper.UserLoginCheck(userId, userPw);
		}
	
	// 관리자 로그인
	public AdminDto Adminlogin (String adminId, String adminPw) {
		
		return loginmapper.AdminLoginCheck(adminId, adminPw);
	}
	
}
