package com.project.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class ProductDTO {

    // 상품 식별자 
    private Double PROD_ID;

    // 상품 명 
    private String PROD_NAME;

    // 상품 이미지 
    private String PROD_IMG;

    // 상품 가격 
    private Long PROD_PRICE;

    // 상품 배송비 
    private Long PROD_DELIVERY_FEE;

    // 최초 구입일자 
    private String BUY_DATE;

    // 사용 기간 
    private String USE_PERIOD;

    // 상품 상태 
    private String PROD_STATE;

    // 상품 사용기 
    private String PROD_REVIEW;

    // 대상 성별 
    private String TO_GENDER;

    // 최소 나이 
    private Long MIN_AGE;

    // 최대 나이 
    private Long MAX_AGE;

    // 판매 여부 
    private String SOLD_YN;

    // 등록자 아이디 
    private String SELLER_ID;

    // 제품 카테고리 
    private String PROD_CATEGORY;

}
