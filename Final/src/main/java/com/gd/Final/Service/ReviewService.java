package com.gd.Final.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.ReviewMapper;
import com.gd.Final.dto.ReviewDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ReviewService {
	
	@Autowired
	ReviewMapper reviewMappper;
	
	// 리뷰 리스트
	public List<ReviewDto> getReviewList () {
		List<ReviewDto> Reviewlist = reviewMappper.selectReviewList(null);
		
		return Reviewlist;
	}
	// 리뷰 등록
	public int addReview (ReviewDto rDto) {
			
		return reviewMappper.insertReview(rDto);
	}
}
