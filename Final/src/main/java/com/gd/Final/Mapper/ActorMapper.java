package com.gd.Final.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.ActorDto;

@Mapper
public interface ActorMapper {
	
	// 영화에 대한 배우정보 리스트
	List<ActorDto> selectActorList (int movieNum);

}
