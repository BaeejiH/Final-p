package com.gd.Final.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gd.Final.dto.CommentDto;

@Mapper
public interface CommentMapper {
	// 댓글 등록
	int insertComment(CommentDto c);
	
}
