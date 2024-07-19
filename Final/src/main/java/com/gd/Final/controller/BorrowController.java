package com.gd.Final.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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

		if (row == 1) {
			log.debug("대여신청 완료");
		} else {
			log.debug("대여신청 실패");
		}

		return "redirect:/MovieList";
	}

	// 회원 대여정보 리스트
	@GetMapping("/user/BorrowList")
	public List<BorrowDto> getBorrowList(Model model,
										@RequestParam(name="userId") String userId) {
		List<BorrowDto> list = borrowService.getBorrowList(userId);
		model.addAttribute("list", list);
		model.addAttribute("userId",userId);
		log.debug("list" + list);

		return list;
	}

	// 대여상태 변경
	@PostMapping("/modifyBhave")
	public String modifyBhave(BorrowDto b) {
		int row = borrowService.modifyBhave(b);

		log.debug("row", row);

		if (row == 1) {
			log.debug("반납 성공");
		} else {
			log.debug("반납 실패");
		}

		return "redirect:/user/BorrowList";
	}

}
