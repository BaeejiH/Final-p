package com.gd.Final.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.UserMapper;
import com.gd.Final.dto.UserDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {
	
	@Autowired
	UserMapper userMapper;
	// 회원 전체 리스트
	public List<UserDto> getUserList (int rowPerPage, int currentPage) {
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("rowPerPage",rowPerPage);
		paramMap.put("beginRow",(currentPage-1)*rowPerPage);
		
		List<UserDto> list = userMapper.selectUserList(paramMap);
		
		
		
		return list;
	}
	// 마지막 페이지
	public int getLastPage (int rowPerPage) {
		int cnt = userMapper.selectUserCount();
		
		int LastPage = cnt/rowPerPage;
		
		if(cnt%rowPerPage != 0 ) {
			LastPage += 1;
		}
		
		return LastPage;
	}
	// 상세보기
	public UserDto getUserOne (String userId){
		return userMapper.selectUserOne(userId);
	}
	
	// 회원정보 추가
	public int addUser(UserDto userdto) {
		return userMapper.insertUser(userdto);
	}
	
	public int modifyUser(UserDto userDto) {
		
		return userMapper.updateUser(userDto);
	
	}
	
	
}
