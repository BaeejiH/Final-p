package com.gd.Final.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gd.Final.Service.ReviewService;
import com.gd.Final.dto.ReviewDto;
import com.gd.Final.dto.ReviewRequest;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Slf4j
@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
		
	// 리뷰 리스트
	@GetMapping("/review")
	public String getReviewList(Model model,
										@RequestParam(name="movieNum") int movieNum) {
		List<ReviewDto> Reviewlist = reviewService.getReviewList(movieNum);
		
		model.addAttribute("Reviewlist",Reviewlist);
		model.addAttribute("movieNum",movieNum);
		log.debug("Reviewlist"+Reviewlist);
		log.debug("RequestParam:"+movieNum);
		
		return "review";
	}
	
	// 리뷰 등록 폼
	@GetMapping("/addReview")
	public String addReview() {
			
		return "addReview";
	}
	// 리뷰 등록 액션
	@PostMapping("/addReview")
	public String addReview(ReviewRequest reviewRequest) {
		
		reviewService.addReview(reviewRequest);
		
		return "redirect:/review?movieNum="+reviewRequest.getMovieNum();	
	}
	   
	 // 리뷰 삭제
	@GetMapping("/removeReview")
	public String removeReview(@RequestParam(name="reviewId") int reviewId,
							   @RequestParam(name="movieNum") int movieNum) {
		
		int row = reviewService.removeReview(reviewId, movieNum);
		
		if(row == 1) {
			log.debug("리뷰삭제 성공");
		}else {
			log.debug("리뷰삭제 실패");
		}
									
		return "redirect:/review?movieNum="+movieNum;
	}
	// 리뷰 상세보기+ 수정 폼
	@GetMapping("/ReviewOne")
	public String getReviewOne(Model model,
							   @RequestParam(name="reviewId") int reviewId) {
		ReviewDto rDto =  reviewService.getReviewOne(reviewId);
									
		model.addAttribute("rDto",rDto);
		log.debug("rDto"+rDto);
			
		
		return "ReviewOne";
	}
	
	
	// 리뷰 수정 엑션
	@PostMapping("/modifyReview")
	public String modifyReview(ReviewDto rDto) {
	int row = reviewService.modifyReview(rDto);
	
	if(row==1) {
		log.debug("리뷰수정 성공");
	}else {
		log.debug("리뷰수정 실패");
	}

	return "redirect:/review?movieNum="+rDto.getMovieNum();
	}
	
}
