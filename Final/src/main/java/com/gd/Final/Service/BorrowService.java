package com.gd.Final.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.BorrowMapper;
import com.gd.Final.dto.BorrowDto;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class BorrowService {

	@Autowired
	BorrowMapper borrowMapper;
	
	public int addBorrow (BorrowDto b) {
		return borrowMapper.insertBorrow(b);
	}
	
	public List<BorrowDto> getBorrowList (String userId){
		return borrowMapper.selectBorrowList(userId);
	}
	
	public int modifyBhave(BorrowDto b) {
		return borrowMapper.updateBehave(b);
	}
	
	public List<BorrowDto> getBList (int rowPerPage, int currentPage){
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("rowPerPage", rowPerPage);
		paramMap.put("beginRow",(currentPage-1)*rowPerPage);
		
		List<BorrowDto> list = borrowMapper.selectBList(paramMap);
		
		log.debug("list"+list);
		
		return list;
	}
	
	// 관리자 전체 회원 대여정보 페이징
	public int getLastPage (int rowPerPage) {
		int cnt = borrowMapper.selectBororowCount(rowPerPage);
		
		int LastPage = cnt/rowPerPage;
		
		if(cnt%rowPerPage!= 0) {
			LastPage += 1;
		}
		
		return LastPage;
	}
}
