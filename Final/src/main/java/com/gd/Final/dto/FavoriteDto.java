package com.gd.Final.dto;




import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FavoriteDto {
	private String userId;
	private String title;
	private int movieNum;
	private Date favoriteDate;
}
