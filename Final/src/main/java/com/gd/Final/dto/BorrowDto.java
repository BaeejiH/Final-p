package com.gd.Final.dto;



import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BorrowDto {
	private int bid;
	private int bcode;
	private String userId;
	private Date startDate;
	private Date endDate;
	private String bhave;
	private String title;
}
