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
import org.springframework.web.bind.annotation.PostMapping;

@Slf4j
@Controller
public class MovieController {

	@Autowired
	MovieService movieService;

	@GetMapping("/test")
	public String getTest() {
		return "test";
	}

	@GetMapping("/MovieList")
	public String getMovie(Model model, @RequestParam(name = "rowPerPage", defaultValue = "10") int rowPerPage,
			@RequestParam(name = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(name = "searchMovie", defaultValue = "") String searchMovie) {

		List<MovieDto> list;
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

		model.addAttribute("list", list);
		model.addAttribute("rowPerPage", rowPerPage);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("LastPage", LastPage);
		model.addAttribute("searchMovie", searchMovie);

		log.debug("list" + list);
		log.debug("rowPerPage" + rowPerPage);
		log.debug("currentPage" + currentPage);
		log.debug("LastPage" + LastPage);

		return "MovieList";
	}

	// 영화 상세보기 + 수정 폼
	@GetMapping("/MovieOne")
	public String getMovieOne(Model model, @RequestParam(name = "movieNum") int movieNum) {
		MovieDto movieDto = movieService.getMovieOne(movieNum);
		model.addAttribute("movieDto", movieDto);
		log.debug("movieDto" + movieDto);
		log.debug("RequestParam movieNum" + movieNum);
		return "MovieOne";
	}

	// 수정 액션 (상세보기에서 바로 수정)
	@PostMapping("/MovieOne")
	public String updateMovie(MovieDto m) {
		int row = movieService.modifyMovie(m);
		log.debug("row" + row);
		return "redirect:/MovieList?movieNum=" + m.getMovieNum();
	}

	// 영화 삭제
	@GetMapping("/removeMovie")
	public String removeMovie(@RequestParam(name = "movieNum") int movienum) {
		int row = movieService.removeMovie(movienum);
		return "redirect:/MovieList";
	}

	// 영화 추가 폼
	@GetMapping("/addMovie")
	public String addMovie() {
		return "addMovie";
	}

	// 영화 추가 액션
	@PostMapping("/addMovie")
	public String addMovie(MovieDto m) {
		int row = movieService.addMovie(m);
		log.debug("row" + row);
		log.debug("Request MovieDto m" + m);
		return "redirect:/MovieList";
	}

}
