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

import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;


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
	public List<BorrowDto> getBorrowList(Model model,HttpSession session) {
		// 다른 페이지에서 파라미터로 사용자Id값을 받는 것이 아닌 session을 통해 값을 받아와야 함. 다른 페이지에서 값을 받을시 들어가는 페이지 모든 곳에 값을 넘겨야함.
		String userId = (String) session.getAttribute("loginUser");
		
		log.debug("userId"+userId);
			
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
	
	// 관리자 전체 대여정보 리스트
		@GetMapping("/admin/BorrowList")
		public List<BorrowDto> getBList(Model model, 
										@RequestParam(name="rowPerPage", defaultValue = "10") int rowPerPage,
										@RequestParam(name="currentPage", defaultValue = "1") int currentPage) {
			List<BorrowDto> list = borrowService.getBList(rowPerPage, currentPage);
			
			int LastPage = borrowService.getLastPage(rowPerPage);
			
			model.addAttribute("list", list);
			model.addAttribute("rowPerPage", rowPerPage);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("LastPage", LastPage);
			
			log.debug("list" + list);
			
			return list;
		}
		
	// 관리자 반납 영화 상태 변경
		@PostMapping("/modifyeBhaveByadmin")
		public String modifyeBhaveByadmin(BorrowDto b) {
			
			int row = borrowService.modifyBhaveByAdmin(b);
			
			if(row ==1) {
				log.debug("변경 성공");
			}else {
				log.debug("변경 실패");
			}
			
			return "redirect:/admin/BorrowList";
		}
		

	
	

}
