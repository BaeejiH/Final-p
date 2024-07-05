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
	
	// 회원정보 추가
	int insertUser (UserDto userDto);
	
	// 회원정보 수정
	int updateUser (UserDto userDto);
	
	// 회원정보 삭제
	int deleteUser (String userId);
	
	// 내정보 열람 -> 회원 상세보기 Mapper 사용
	

	
	
}
