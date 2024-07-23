package com.gd.Final.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.ActorMapper;
import com.gd.Final.dto.ActorDto;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class ActorService {
	
	@Autowired
	ActorMapper actorMapper;
	
	public List<ActorDto> getActorList (int moviNum){
			
		return actorMapper.selectActorList(moviNum);
	}
}
