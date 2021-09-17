package com.team.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class MemberVO {

	private String id;
	private String passwd;
	private String name;
	private String birth;
	private String gender;
	private String email;
	private String address;
	private Date create_at;
}







