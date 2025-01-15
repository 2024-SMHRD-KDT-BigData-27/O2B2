package com.project.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class ProductCommentDTO {
	// 문의 식별자 
    private Double P_CMT_ID;

    // 제품 식별자 
    private Double PROD_ID;

    // 문의 사항 
    private String COMMENTS;

    // 작성 일자 
    private String CREATE_DT;

    // 작성자 아이디 
    private String ID;

    // 문의 상위 식별자 
    private Double SUPER_CMT_ID;
}
