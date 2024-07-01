package com.gd.Final.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gd.Final.Service.MovieService;
import com.gd.Final.dto.MovieDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MovieController {
	
	@Autowired
	MovieService movieService;
	
	
	@GetMapping("/test")
	public String getTest () {
		return "test";
	}
	
	@GetMapping("/MovieList")
	public String getMovie(Model model, @RequestParam(name="rowPerPage", defaultValue = "10") int rowPerPage,
										@RequestParam(name="currentPage", defaultValue = "1") int currentPage,
										@RequestParam(name="searchMovie", defaultValue = "") String searchMovie) {
	
		
		List <MovieDto> list;
		int LastPage;
		
		 if (searchMovie != null && !searchMovie.isEmpty()) {
		        // 검색어가 있는 경우 검색된 영화 리스트를 가져옵니다.
		        list = movieService.getMovieListSearch(rowPerPage, currentPage, searchMovie);
		        LastPage = movieService.getLastPageSearch(rowPerPage, searchMovie);
		    } else {
		        // 검색어가 없는 경우 전체 영화 리스트를 가져옵니다.
		        list = movieService.getMovieList(rowPerPage, currentPage);
		        LastPage = movieService.getLastPage(rowPerPage);
		    }
		
		
		
		model.addAttribute("list",list);
		model.addAttribute("rowPerPage",rowPerPage);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("LastPage",LastPage);
		model.addAttribute("searchMovie",searchMovie);
		
		log.debug("list"+list);
		log.debug("rowPerPage"+rowPerPage);
		log.debug("currentPage"+currentPage);
		log.debug("LastPage"+LastPage);
		
		return "MovieList";
	}
	
	
}
