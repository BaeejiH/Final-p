package com.gd.Final.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gd.Final.Service.UserService;
import com.gd.Final.dto.UserDto;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Slf4j
@Controller
public class UserController {
	
	
	@Autowired
	UserService userService;
	
	@GetMapping("/UserList")
	public String getUserList(Model model,@RequestParam(name="rowPerPage", defaultValue = "10") int rowPerPage,
							@RequestParam(name="currentPage", defaultValue = "1") int currentPage){
		
	int LastPage = userService.getLastPage(rowPerPage);	
		
	List<UserDto> list =userService.getUserList(rowPerPage, currentPage);
		
	model.addAttribute("list",list);
	model.addAttribute("rowPerPage",rowPerPage);
	model.addAttribute("currentPage",currentPage);
	model.addAttribute("LastPage",LastPage);
	
	
		return "UserList";
	}
	
	// 상세보기 + 회원 추가 폼
	@GetMapping("/UserOne")
	public String getUserOne(Model model,@RequestParam(name="userId")String userId) {
		
		UserDto us = userService.getUserOne(userId);
		
		model.addAttribute("us",us);
		
		
		log.debug("userId",userId);
		log.debug("userDto{}"+us);
		return "UserOne";
	}
	// 회원등록 폼
	@GetMapping("/addUser")
	public String addUser() {	
		return "addUser";
	}
	//회원등록 액션
	@PostMapping("/addUser")
	public String addUser(UserDto userDto) {
		
		log.debug("UserId:" +userDto.getUserId());
		log.debug("userName:" +userDto.getUserName());
		userService.addUser(userDto);
		return "redirect:/UserList";
	}
	
	// 수정 액션
	@PostMapping("/UserOne")
	public String modifyUser(UserDto userDto) {
		int row = userService.modifyUser(userDto);	
		log.debug("row:",row);
		
		if(row == 1) {
			log.debug("수정성공");
		}else {
			log.debug("수정실패");
		}
		
		return "redirect:/UserList?userId="+userDto.getUserId();
	}
	
	//삭제
	@GetMapping("/removeUser")
	public String removeUser(String userId) {
		
		int row  = userService.removeUser(userId);
		
		if( row == 1) {
			log.debug("삭제 성공");
		}else {
			log.debug("삭제 실페");
		}
		return "redirect:/UserList";
	}
	
	// 내정보 열람
	@GetMapping("/MyUser")
	public String getMyUser(Model model,@RequestParam(name="userId")String userId) {
		
		UserDto us = userService.getUserOne(userId);
		
		model.addAttribute("us",us);
		
		
		log.debug("userId",userId);
		log.debug("userDto{}"+us);
		return "MyUser";
	}
	
	
	
	
	
	
}
