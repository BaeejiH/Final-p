package com.gd.Final.Mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.UserDto;

@Mapper
public interface UserMapper {
	// 회원 전체 리스트
	List<UserDto> selectUserList (Map<String,Object>m);
	
	// 회원 수
	int selectUserCount ();
	
	// 회원검색
	int selectUserSearch ();
	
	// 회원 상세보기
	UserDto selectUserOne (String userId);
	
	
	
}
