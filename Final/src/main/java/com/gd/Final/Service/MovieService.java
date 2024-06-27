package com.gd.Final.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.MovieMapper;
import com.gd.Final.dto.MovieDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MovieService {
	
	@Autowired
	MovieMapper movieMapper;
	
	public List<MovieDto> getMovieList(){
		List<MovieDto> list = movieMapper.selectMovieList();
		log.debug("list"+list);
		return list;
	}
}
