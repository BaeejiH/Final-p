package com.gd.Final.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gd.Final.Service.MovieService;
import com.gd.Final.dto.MovieDto;


@Controller
public class MovieController {
	
	@Autowired
	MovieService movieService;
	
	
	@GetMapping("/test")
	public String getTest () {
		return "test";
	}
	
	@GetMapping("/MovieList")
	public String getMovie(Model model) {
		List <MovieDto> list = movieService.getMovieList();
		
		model.addAttribute("list",list);
		
		return "MovieList";
	}
	
	
}
