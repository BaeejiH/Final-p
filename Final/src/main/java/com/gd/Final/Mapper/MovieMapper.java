package com.gd.Final.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.MovieDto;

@Mapper
public interface MovieMapper {
	
	List<MovieDto> selectMovieList ();
}
