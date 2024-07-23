package com.gd.Final.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gd.Final.Service.ActorService;
import com.gd.Final.dto.ActorDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ActorController {
	
	@Autowired
	ActorService actorService;
	
	
	@GetMapping("/Actor")
	public String getActorList(@RequestParam(name="movieNum") int movieNum, Model model) {
		List<ActorDto> list = actorService.getActorList(movieNum);
		
		model.addAttribute("list",list);
		
		log.debug("list----->"+list);
		return "Actor";
	}
	
}
