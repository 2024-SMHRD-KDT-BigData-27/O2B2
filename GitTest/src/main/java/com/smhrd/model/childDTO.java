package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class childDTO {
	 // 자녀 식별자 
    private Double CHILD_ID;

    // 자녀 성별 
    private String GENDER;

    // 자녀 생년월일 
    private String CHILD_BIRTHDATE;

    // 부모 아이디 
    private String PARENT_ID;

    // 등록 일자 
    private String CREATE_DT;

}
