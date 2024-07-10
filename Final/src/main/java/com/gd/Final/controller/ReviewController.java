package com.gd.Final.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gd.Final.Service.ReviewService;
import com.gd.Final.dto.ReviewDto;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;


@Slf4j
@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
		
	// 리뷰 리스트
	@GetMapping("/review")
	public List<ReviewDto> getReviewList(Model model) {
		List<ReviewDto> Reviewlist = reviewService.getReviewList();
		
		model.addAttribute("Reviewlist",Reviewlist);
		
		log.debug("Reviewlist"+Reviewlist);
		
		return Reviewlist;
	}
	
	// 리뷰 등록 폼
	@GetMapping("/addReview")
	public String addReview() {
			
		return "addReview";
	}
	// 리뷰 등록 액션
	@PostMapping("/addReview")
	public String addReview(ReviewDto rDto) {
		
		int row = reviewService.addReview(rDto);
		
		if(row ==1) {
			log.debug("--------리뷰등록완료----------");
		}else {
			log.debug("--------리뷰등록실패----------");
		}
		
		log.debug("row"+row);
		
		return "redirect:/review";
		
		
	}
	
	
	
}
