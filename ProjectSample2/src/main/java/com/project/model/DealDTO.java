package com.project.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class DealDTO {
    // 거래 식별자 
    private String DEAL_ID;

    // 상품 식별자 
    private String PRODUCT_ID;

    // 구매자 아이디 
    private String ID;

    // 거래 금액 
    private Double DEAL_AMOUNT;
    
    private String CREATE_DT;
}
