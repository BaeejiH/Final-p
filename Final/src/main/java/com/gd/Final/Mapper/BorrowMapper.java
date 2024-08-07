package com.gd.Final.Mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.BorrowDto;

@Mapper
public interface BorrowMapper {
	
	// 회원 대여신청
	int insertBorrow (BorrowDto b);
	
	//  회원 대여정보 열람 리스트
	List<BorrowDto> selectBorrowList (String userId);
	
	// 회원 대여상태 변경
	int updateBehave (BorrowDto b);
	
	// 관리자 전체 대여정보 열람 리스트
	List<BorrowDto> selectBList (Map<String,Object> m);
	
	// 대여정보 전체개수
	int selectBororowCount(int rowPerPage);
	
	// 관리자 (회원) 대여상태 변경
	int updateBeHaveByAdmin(BorrowDto b);
}
