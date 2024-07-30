package com.gd.Final.Mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.MovieFileDto;


@Mapper
public interface MainMapper {
	
	// 메인페이지 추천영화 + 실시간 평점
	List<MovieFileDto> selectRecommand ();
	
	
}
