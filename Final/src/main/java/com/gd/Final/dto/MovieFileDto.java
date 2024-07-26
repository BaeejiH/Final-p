package com.gd.Final.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MovieFileDto {
	private int fileNo;
	private int movieNum;
	private String fileName;
	private String originalName;
	private String fileType;
	private long fileSize;
	private String updateDate;
	private String createDate;
}
