package com.gd.Final.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	// Movie 전체리스트 (검색 값이 없을 때 전체리스트)
	public List<MovieDto> getMovieList(int rowPerPage, int currentPage){
		Map<String,Object> paramMap = new HashMap<>(); 
		paramMap.put("rowPerPage",rowPerPage);
		paramMap.put("beginRow", (currentPage-1)*rowPerPage);
		
		List<MovieDto> list = movieMapper.selectMovieList(paramMap);
		log.debug(list.toString());
		return list;
	}
	
	// 검색기능( 검색 값이 있을 때 리스트)
		public List<MovieDto> getMovieListSearch(int rowPerPage, int currentPage, String searchMovie) {
			  Map<String, Object> paramMap = new HashMap<>();
			    paramMap.put("rowPerPage", rowPerPage);
			    paramMap.put("beginRow", (currentPage - 1) * rowPerPage);
			    paramMap.put("searchMovie", searchMovie);
			 
			    List<MovieDto> list = movieMapper.selectMovieList(paramMap);
				log.debug(list.toString());
			return list;
		}
	
	
	// 마지막 페이지 구하기
	public int getLastPage (int rowPerPage) {
		int cnt = movieMapper.selectMovieCount(rowPerPage);
		
		int LastPage = cnt/rowPerPage;
		
		log.debug("LastPage"+LastPage);
	
		if(cnt%rowPerPage != 0 ) {
			 LastPage += 1;
		}
		return LastPage;
				
	}
	// 검색된 값 에 대한 마지막 페이지 구하기
	public int getLastPageSearch(int rowPerPage, String searchMovie) {
		return 0;
	}
	
	
}
