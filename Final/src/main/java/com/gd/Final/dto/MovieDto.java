package com.gd.Final.dto;

import lombok.AllArgsConstructor;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieDto {
	private int movieNum;
	private String genre;
	private String title;
	private String director;
	private String producer;
	private String releaseDate;
	private int runtime;
	private String description;
	private String image;
	private int bcode;
	private String bhave;
	private int borrow_Count;
}
