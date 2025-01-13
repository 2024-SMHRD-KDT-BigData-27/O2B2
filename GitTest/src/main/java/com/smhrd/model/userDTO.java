package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class userDTO {
	// 아이디 
    private String ID;

    // 비밀번호 
    private String PW;

    // 이름 
    private String NAME;

    // 주소 
    private String ADDRESS;

    // 상세주소 
    private String DETAILED_ADDRESS;

    // 휴대폰번호 
    private String PHONE;

    // 이메일 
    private String EMAIL;

    // 가입일자 
    private String JOIN_DT;

}
