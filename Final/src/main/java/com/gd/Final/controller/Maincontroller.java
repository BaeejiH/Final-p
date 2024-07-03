package com.gd.Final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class Maincontroller {
	
	@GetMapping("User/main")
	public String getUserMain() {
		return "User/main";
	}
	
	@GetMapping("Admin/main")
	public String getAdminMain() {
		return "Admin/main";
	}
	
}
