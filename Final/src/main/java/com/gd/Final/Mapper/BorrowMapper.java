package com.gd.Final.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.BorrowDto;

@Mapper
public interface BorrowMapper {
	
	// 회원 대여신청
	int insertBorrow (BorrowDto b);
}
