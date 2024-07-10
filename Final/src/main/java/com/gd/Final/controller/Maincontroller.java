package com.gd.Final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class Maincontroller {
	@GetMapping("/user/main")
	public String User() {
		System.out.println("★사용자 로그인★");
		return "user/main";
	}
	
	@GetMapping("/admin/main")
	public String Admin() {
		System.out.println("★관리자 로그인★");
		return "/admin/main";
	}
	@GetMapping("/sidebar")
	public String sidebar() {
		return "sidebar";
	}
	
}
