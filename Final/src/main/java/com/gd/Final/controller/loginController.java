package com.gd.Final.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gd.Final.Service.loginService;
import com.gd.Final.dto.AdminDto;
import com.gd.Final.dto.UserDto;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class loginController {


	@Autowired
	
	loginService loginservice;

	@GetMapping("/public/login") // 로그인 Form
	public String login() {// 로그인 페이지 , 로그인 o : User 로그인 x : public
		return "public/login";
	}
	
	
	@PostMapping("/public/login") // 로그인 Action
	public String login(@RequestParam(name="userId") String userId,
						   @RequestParam(name="userPw") String userPw,
						   	HttpSession session) {
		UserDto user = loginservice.Userlogin(userId, userPw);
		AdminDto admin = loginservice.Adminlogin(userId, userPw);
		
		
		if (user != null && user.getUserPw().equals(userPw)) { // 사용자 로그인 성공
	        log.debug("사용자 로그인 성공");
	        session.setAttribute("loginUser", user.getUserName()); // 사용자 정보를 세션에 저장함
	        return "redirect:/user/main"; // 사용자 메인 페이지로 리다이렉트함
	    } else if (admin != null && admin.getAdminPw().equals(userPw)) { // 관리자 로그인 성공
	        log.debug("관리자 로그인 성공");
	        session.setAttribute("loginAdmin", admin.getName()); // 관리자 정보를 세션에 저장함
	        return "redirect:/admin/main"; // 관리자 메인 페이지로 리다이렉트함
	    } else {
	        log.debug("로그인 실패");
	        return "redirect:/public/login"; 
	    }	
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/public/login";
	}
	
	
	
	
	
	
}
	

