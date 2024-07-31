package com.gd.Final.Mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.ReviewDto;

@Mapper	
public interface ReviewMapper {
	
	// 리뷰 리스트
	List<ReviewDto> selectReviewList (int movieNum) ;
	
	// 리뷰 추가
	int insertReview (ReviewDto rDto);
	
	// 리뷰 삭제
	int deleteReview (int reviewId);
	
	// 리뷰 수정
	int updateReview(ReviewDto rDto);
	
	// 리뷰 상세보기
	ReviewDto selectReviewOne (int reviewId);

	
	
	
}
