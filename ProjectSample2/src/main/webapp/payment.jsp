<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://democpay.payple.kr/js/v1/payment.js"></script>
</head>
<body>
	<button id="btnPayment">결제하기</button>
<script>
    $('#btnPayment').on('click', function (event) {
        let obj = {};
        obj.clientKey = "test_DF55F29DA654A8CBC0F0A9DD4B556486";
        obj.PCD_PAY_TYPE = "card";
        obj.PCD_PAY_WORK = "CERT";
        obj.PCD_CARD_VER = "02";
        obj.PCD_PAY_GOODS = "테스트 상품";
        obj.PCD_PAY_TOTAL = 1000;
        obj.PCD_RST_URL = "/result";
        PaypleCpayAuthCheck(obj);
    });
    
    function getResult(params) {
        if (params.PCD_PAY_RESULT === 'success'){
            <!-- server side로 결제 승인요청 구현 -->
        }
        else {
            <!-- 결제 실패 페이지 렌더링 -->
        }
    }
</script>


</body>
</html>