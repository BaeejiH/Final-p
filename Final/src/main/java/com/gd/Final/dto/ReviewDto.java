package com.gd.Final.dto;


import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewDto {
	private int reviewId;
	private String reviewTitle;
	private String userId;
	private int movieNum;
	private String reviewContent;
	private Date reviewDate;
	
}
