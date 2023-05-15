package com.gdu.semi.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PersonDTO {
	private String perId;
	private String perPw;
	private String perName;
	private int perPhoneno;
	private String perPostaddress;
	private String perRoadaddress;
	private String perJibunaddress;
	private String perDetailaddress;
	private String perEmail;
	private int perGender;
}
