package com.gd.Final.dto;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
	private String userId;
	private String userName;
	private String email;
	private String gender;
	private Date updateDate;
	private Date createDate;
	private String userPw;
	private Date UsercreateDate;
	List<UserDto> daoList;
	private String newPw;
}
