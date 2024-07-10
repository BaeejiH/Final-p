package com.gd.Final.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.Final.Mapper.CommentMapper;
import com.gd.Final.dto.CommentDto;

@Service
public class CommentService {
	
		@Autowired
		CommentMapper commentMapper;
	
		// 댓글 등록
		public int addComment(CommentDto c) {
			return commentMapper.insertComment(c);
		}
		
		
}
