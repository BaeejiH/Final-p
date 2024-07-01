package com.gd.Final.Mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.MovieDto;

@Mapper
public interface MovieMapper {
	
	List<MovieDto> selectMovieList (Map<String,Object> m);
	
	int selectMovieCount (int rowPerPage);
	
	int selectMovieSearch ();
	
	
}
