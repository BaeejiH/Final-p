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
	ReviewMapper reviewMapper;
	
	// 리뷰 리스트
	public List<ReviewDto> getReviewList (int movieNum) {
		List<ReviewDto> Reviewlist = reviewMapper.selectReviewList(movieNum);
		
		return Reviewlist;
	}
	// 리뷰 등록
	public int addReview (ReviewDto rDto) {
			
		return reviewMapper.insertReview(rDto);
	}
	
	// 리뷰 삭제
	public int removeReview (int reviewId) {
		return reviewMapper.deleteReview(reviewId);
	}
	// 리뷰 수정
	public int modifyReview (ReviewDto rDro) {
		return reviewMapper.updateReview(rDro);
	}
	// 리뷰 상새보기
	public ReviewDto getReviewOne (int reviewId) {
		return reviewMapper.selectReviewOne(reviewId);
	}
	
}
