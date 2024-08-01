package com.gd.Final.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gd.Final.Service.UserService;
import com.gd.Final.dto.UserDto;

import jakarta.servlet.http.HttpSession;
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
	@GetMapping("/public/signUp")
	public String addUser() {	
		return "/public/signUp";
	}
	//회원등록 액션
	@PostMapping("/public/signUp")
	public String addUser(UserDto userDto) {
		
		log.debug("UserId:" +userDto.getUserId());
		log.debug("userName:" +userDto.getUserName());
		userService.signUp(userDto);
		return "redirect:/public/login";
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
	
	// 내정보 수정
	@PostMapping("/MyUser")
	public String modifyMyUser(UserDto userDto) {
		int row = userService.modifyUser(userDto);
		
		log.debug("row:"+row);
		
		if(row == 1) {
			log.debug("수정성공");
		}else {
			log.debug("수정실패");
		}
		
		return "redirect:/user/main?userId="+userDto.getUserId();
	}
	
	@GetMapping("/modifyPw")
	public String getMethodName() {
		return "modifyPw";
	}
	
	@PostMapping("/modifyPw")
	public String postMethodName(@RequestParam(name="userPw") String userPw,
								 @RequestParam(name="newPw") String newPw,
								 @RequestParam(name="userId") String userId,
								 Model model) {
				
		Map<String,Object> m = new HashMap<>();
		m.put("newPw", newPw);
		m.put("userId", userId);
		m.put("userPw",userPw);
		
		
		int row = userService.modifyPw(newPw, userId, userPw);
		
		if(row == 1) {
			log.debug("비밀번호 변경성공");
			return "/public/login";
		}else {
			log.debug("비밀번호 변경실패");
			model.addAttribute("error","현재비밀번호가 일치하지 않습니다");
			return "modifyPw";
		}
		
	}
	
	
	
	
	
	
	
	
	
	
}
