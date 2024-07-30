package com.gd.Final.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.MainMapper;
import com.gd.Final.dto.MovieFileDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MainService {
	
	@Autowired
	MainMapper mainMapper;
	
	
	public List<MovieFileDto> getRecommand (){
		return mainMapper.selectRecommand(); 
	}
}
