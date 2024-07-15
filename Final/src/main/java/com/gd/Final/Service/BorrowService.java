package com.gd.Final.Service;

import java.util.List;

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
	
	public List<BorrowDto> getBorrowList (){
		return borrowMapper.selectBorrowList(null);
	}
	
	public int modifyBhave(BorrowDto b) {
		return borrowMapper.updateBehave(b);
	}
}
