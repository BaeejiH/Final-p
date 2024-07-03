package com.gd.Final.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminDto {
	private String adminId;
	private String name;
	private String email;
	private String gender;
	private Date updateDate;
	private Date createDate;
	private String adminPw;
	private Date AdmincreateDate;
}
