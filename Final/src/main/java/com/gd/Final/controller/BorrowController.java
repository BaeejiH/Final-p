package com.gd.Final.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.gd.Final.Service.BorrowService;
import com.gd.Final.dto.BorrowDto;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class BorrowController {
	
	@Autowired
	BorrowService borrowService;
	
	// 회원 대여신청 폼
	@GetMapping("/user/addBorrow")
	public String addBorrow() {
		return "/user/addBorrow";
	}
	
	// 회원 대여신청 액션
	@PostMapping("/user/addBorrow")
	public String addBorrow(BorrowDto b) {
	   int row = borrowService.addBorrow(b);
	   
	   if(row == 1) {
		   log.debug("대여신청 완료");
	   }else {
		   log.debug("대여신청 실패");
	   }
	   
		return "redirect:/MovieList";
	}
	
	
}
