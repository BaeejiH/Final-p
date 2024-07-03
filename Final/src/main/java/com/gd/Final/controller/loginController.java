package com.gd.Final.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.gd.Final.Service.loginService;
import com.gd.Final.dto.UserDto;

import jakarta.servlet.http.HttpSession;

@Controller
public class loginController {

	@Autowired
	loginService loginservice;
	

	@GetMapping("/login")
	public String togetlogin(HttpSession session) {// 로그인 페이지
		UserDto user = (UserDto) session.getAttribute("userId");
		if(user != null) {
			return "redirect:/User/main";
			
		}
		System.out.println("로그인 된 상태");
		return "login";
	}
	
	
	@PostMapping("/login")
	public String getlogin(@RequestParam(name="userId", defaultValue = "") String userId,
						   @RequestParam(name="userPw", defaultValue = "") String userPw,
						   	HttpSession session) {
		UserDto id = loginservice.getUserlogin(userId, userPw);
		
		if(id == null ) {
			System.out.println("로그인 실패");
			return "redirect:/login";	
		}
	          	                                       
		session.setAttribute(userPw, id);
		return "redirect:/User/main";
	
	}

}
