package com.gd.Final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieController {
	@GetMapping("/test")
	public String getTest () {
		return "test";
	}
	
}
