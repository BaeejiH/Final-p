package com.gd.Final.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewDto {
	private int reviewId;
	private String userId;
	private int movieNum;
	private String reviewContent;
	private Date reviewDate;
	
}
