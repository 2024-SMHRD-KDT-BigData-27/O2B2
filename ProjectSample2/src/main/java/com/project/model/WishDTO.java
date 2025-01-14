package com.project.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class WishDTO {
    // 찜 식별자 
    private Double WISH_ID;

    // 상품 식별자 
    private Double PRODUCT_ID;

    // 회원 아이디 
    private String ID;

    // 등록 일자 
    private String CREATE_DT;

}
