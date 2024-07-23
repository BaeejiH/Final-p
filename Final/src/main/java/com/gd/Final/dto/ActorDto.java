package com.gd.Final.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ActorDto {
	private int actorId;
	private String actorImg;
	private String actorName;
	private String actorMN;
	private String actorGender;
	private String actorAge;
	private int movieNum;
}
