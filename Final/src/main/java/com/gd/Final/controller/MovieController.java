package com.gd.Final.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gd.Final.Mapper.MovieMapper;
import com.gd.Final.Service.MovieService;
import com.gd.Final.dto.CommentDto;
import com.gd.Final.dto.FavoriteDto;
import com.gd.Final.dto.MovieDto;
import com.gd.Final.dto.MovieRequest;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Slf4j
@Controller
public class MovieController {

	@Autowired
	MovieService movieService;
	
	@Autowired
	MovieMapper movieMapper;

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
	public String getMovieOne(Model model, @RequestParam(name = "movieNum") int movieNum,
								HttpSession session) {
		
		String userId = (String) session.getAttribute("loginUser");
		
		MovieDto movieDto = movieService.getMovieOne(movieNum);
		
		// 즐겨찾기 상태 확인 로직
		int Favorited =  movieMapper.Favorited(movieNum, userId);
		
		List<CommentDto> commentList = movieService.getCommentList(movieNum);
		
		model.addAttribute("movieDto", movieDto);
		model.addAttribute("commentList",commentList);
		model.addAttribute("userId",userId);
		model.addAttribute("Favorited",Favorited);
		
	    for (CommentDto comment : commentList) {
            log.debug("Comment: {}", comment);
        }
			
		log.debug("movieDto" + movieDto);
		log.debug("RequestParam movieNum" + movieNum);
		log.debug("commentList---->"+commentList);
		return "MovieOne";
	}

	// 수정 액션 (상세보기에서 바로 수정)
	@PostMapping("/MovieOne")
	public String updateMovie( MovieDto m) {
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
	public String addMovie(MovieRequest movieRequest) {
		log.debug("Title :" +movieRequest.getTitle());
		log.debug("Runtime :" +movieRequest.getRuntime());
		log.debug("ReleaseDate:" +movieRequest.getReleaseDate());
		log.debug("Producer:" +movieRequest.getProducer());
		log.debug("Genre:" +movieRequest.getGenre());
		log.debug("Descrpition:" +movieRequest.getDescription());
		log.debug("Director:" +movieRequest.getDirector());
		log.debug("Bcode:" +movieRequest.getBcode());
		
		movieService.addMovie(movieRequest);
		
		return "redirect:/MovieList";
	}
	
	@GetMapping("/CSS/header")
	public String getMethodName() {
		return "/CSS/header";
	}
	
	// 회원 즐겨찾기 리스트
	@GetMapping("/FavoriteList")
	public String getFavoriteList(Model model, HttpSession session) {
		
		String userId = (String)session.getAttribute("loginUser");
		
		List<FavoriteDto> Favoritelist = movieService.getFavoriteList(userId);
		
		log.debug("Favoritelist------>"+Favoritelist);
		log.debug("userId------------->"+userId);
		
		model.addAttribute("Favoritelist",Favoritelist);
		model.addAttribute("userId",userId);
		
		
		return "FavoriteList";
	}
	
	// 즐겨찾기 등록제거
	@ResponseBody
	@PostMapping("/Favorite")
	public Map<String, Object> getFavortie(@RequestParam(name="movieNum")int movieNum, HttpSession session) {
		
		String userId = (String)session.getAttribute("loginUser");
		boolean Favorited = movieService.getFavorite(movieNum, userId);
		
		Map<String,Object> response = new HashMap<>();
		
		// 즐겨찾기 상태 확인 후 등록 or 제거
		response.put("status", Favorited ? "removed" : "added");
			
		return response;
	}
	
	//영화대여 규칙
	@GetMapping("MovieRule")
	public String getMovieRule() {
		return "MovieRule";
	}
	
	
	
	
	
	

}
