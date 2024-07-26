package com.gd.Final.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.MovieFileDto;


@Mapper
public interface MovieFileMapper {
	
	// 영화 파일 추가
	int insertMovieFile (MovieFileDto file);
	// 영화 파일 수정
	int updateMovieFile (MovieFileDto file);
	
}
