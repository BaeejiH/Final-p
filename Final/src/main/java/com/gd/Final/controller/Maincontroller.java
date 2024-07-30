package com.gd.Final.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.gd.Final.Service.MainService;
import com.gd.Final.dto.MovieFileDto;

import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
public class Maincontroller {
	
	@Autowired
	MainService mainService;
	
	@GetMapping("/user/main")
	public String User(Model model) {
		System.out.println("★사용자 로그인★");
		List<MovieFileDto> list = mainService.getRecommand();
		
		model.addAttribute("list",list);
		
		log.debug("list------->"+list);
		
		return "user/main";
	}
	
	@GetMapping("/admin/main")
	public String Admin(Model model) {
		System.out.println("★사용자 로그인★");
		List<MovieFileDto> list = mainService.getRecommand();
		
		model.addAttribute("list",list);
		
		log.debug("list------->"+list);
		
		return "admin/main";
	}
	
}
