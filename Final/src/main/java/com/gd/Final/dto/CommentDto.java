package com.gd.Final.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentDto {
	private int commentNo;
	private int movieNum;
	private String userId;
	private String commentText;
	private float rating;
	private Date commentDate;
	
}
