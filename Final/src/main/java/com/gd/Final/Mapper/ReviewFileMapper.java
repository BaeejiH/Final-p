package com.gd.Final.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.ReviewFileDto;

@Mapper
public interface ReviewFileMapper {

	// 리뷰파일 추가
	int insertReviewFile (ReviewFileDto ReviewFile);
	
	// 리뷰파일 수정
	int updateReviewFile (ReviewFileDto ReviewFile);
}
