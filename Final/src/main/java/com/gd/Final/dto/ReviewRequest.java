package com.gd.Final.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewRequest {
	private int reviewId;
	private String reviewTitle;
	private String userId;
	private int movieNum;
	private String reviewContent;
	private Date reviewDate;
	private MultipartFile reviewFile;
}
