<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	td{text-align:center;}
</style>
<!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script>

<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function(){
		<%-- 
		
		--%>	
		 var IMP = window.IMP; // 생략 가능
		 IMP.init("imp83747678"); // 예: imp0000000
		 
		 
	});
	
	function requestPay() {
	      // IMP.request_pay(param, callback) 결제창 호출
	      IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "card",
	          merchant_uid: "ORD20180131-0000011",
	          name: "노르웨이 회전 의자",
	          amount: 64900,
	          buyer_email: "gildong@gmail.com",
	          buyer_name: "홍길동",
	          buyer_tel: "010-4242-4242",
	          buyer_addr: "서울특별시 강남구 신사동",
	          buyer_postcode: "01181"
	      }, function (rsp) { // callback
	          if (rsp.success) {
	              ...,
	              // 결제 성공 시 로직,
	              ...
	          } else {
	              ...,
	              // 결제 실패 시 로직,
	              ...
	          }
	      });
	    }
	   IMP.request_pay({
		      /* ...중략... */
		    }, function (rsp) { // callback
		      if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
		        // jQuery로 HTTP 요청
		        jQuery.ajax({
		            url: "{서버의 결제 정보를 받는 endpoint}", // 예: https://www.myservice.com/payments/complete
		            method: "POST",
		            headers: { "Content-Type": "application/json" },
		            data: {
		                imp_uid: rsp.imp_uid,
		                merchant_uid: rsp.merchant_uid
		            }
		        }).done(function (data) {
		          // 가맹점 서버 결제 API 성공시 로직
		        })
		      } else {
		        alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		      }
		    });
	
</script>
</head>

<body>
  <button onclick="requestPay()">결제하기</button>
</body>
</html>