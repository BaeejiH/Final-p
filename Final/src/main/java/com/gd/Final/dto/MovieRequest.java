package com.gd.Final.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MovieRequest {
	private int movieNum;
	private String genre;
	private String title;
	private String director;
	private String producer;
	private String releaseDate;
	private int runtime;
	private String description;
	private int bcode;
	private MultipartFile movieFile;
}
