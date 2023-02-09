<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="left.jsp" %>  
<%@ include file="modal.jsp"%>  

<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 
<style>
   td{text-align:center;}
</style>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js" integrity="sha256-xLD7nhI62fcsEZK2/v8LsBcb4lG7dgULkuXoXB/j91c=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- i태그 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/Gain/markup/reset.css"/> 
<link rel="stylesheet" href="/Gain/buy/buy.css"/>
<meta charset="UTF-8">
<title>내 손 안의 백화점, 가인</title>
<style type="text/css">
#flip01{
    position: absolute;
    margin-left: 271px;
    margin-top: -60px;
}

#change{
	
    margin-left: 309px;
    margin-top: -68px;
    background: white;
    color: black;
    border: 1px solid;
	
	
}

</style>
<script>

$(document).ready(function(){
	  $("#flip01").click(function(){
	    $("#panel01").slideToggle("slow");
	  });
	  $("#flip").click(function(){
	    $("#panel").slideToggle("slow");
	  });
	  $(".select01").click(function(){
		  alert("선택완료")
	  })
	});
</script>
</head>

<body>
	  <header>
    	<c:if test="${not empty login }"> <%-- 로그인 세션 O --%>
         <div class="gnb">
            <div class="gnb_left">내 손 안의 백화점, 가인</div>
            <div class="gnb_center">The department store in my hand</div>
            <nav class="gnb_right">
                <ul>
                    <li><a href="/Gain/logout.do">로그아웃</a></li>
                    <li><a href="/Gain/goMypage.do">마이페이지</a></li>
                </ul>
            </nav>
         </div>
         </c:if>
         <c:if test="${empty login }"> <%-- 로그인 세션 X --%>
         <div class="gnb">
            <div class="gnb_left">내 손 안의 백화점, 가인</div>
            <div class="gnb_center">The department store in my hand</div>
            <nav class="gnb_right">
                <ul>
                    <li><a href="/Gain/login.do">로그인</a></li>
                    <li><a href="/Gain/goNewMember.do">회원가입</a></li>
                </ul>
            </nav>
         </div>
         </c:if>
         <h1 class="main_logo">
            <a href="/Gain/goMain.do"><img src="/Gain/markup/img/GAIN_mainlogo.png" alt="가인 메인 로고"></a>
         </h1>
         <nav class="lnb">
            <ul>
                <li><a href="/Gain/getProdList.do">전체 상품</a></li>
                <li><a href="/Gain/getProdList.do?categoryNum=C1">의류</a></li>
                <li><a href="/Gain/getProdList.do?categoryNum=C2">슈즈</a></li>
                <li><a href="/Gain/getProdList.do?categoryNum=C3">가방</a></li>
                <li><a href="/Gain/getProdList.do?categoryNum=C4">액세서리</a></li>
                <li><a href="/Gain/getProdList.do?categoryNum=C5">주얼리</a></li>
                <li><a href="#">DEGINERS</a></li>
            </ul>
         </nav>
    </header>
	<section class="body">
		<div class="flex-container">


   	<div class="shipping-address">
				<!-- 배송지 -->
				<br>
				<h3 style="margin-left: 94px">배송지</h3>
		 		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalCenter" id="change">
					  변경
			    </button>
				
				<form>
					<div id="sform01">
						<input type="text" name="address"
							placeholder="경기 성남시 분당구 백현동 565-6 그레이스빌" 
							style="width: 55%" value="${m01.address}" readonly><br>
						<input type="text" name="name" style="width: 10%" value = "${m01.name }" readonly> 
							<input type="text" name="phonenum" value="${m01.phonenum }" readonly>
						
							<br><br> 배송메시지<br>
						<textarea placeholder="내용을 입력해주세요" style="width: 55%"></textarea>
						<br> <br>
					</div>
					<hr>
				
					<!-- 주문상품(사진) -->
					<br>
					<h3 style="margin-left: 94px">주문상품(총1개)</h3>
					<div id="sform01">
						<div style="border: 1px solid black; width: 90px; height: 90px;"><img src="/Gain/heejun/${p01.prodImg}" style="width: 88px;
    height: 87px;"></div>
						<div class="pdinfo">
							<div>상품명</div>
							<input type="text" name="prodName" value="${p01.prodName} ">
 							<br> 
							<div style="color: purple">${time01}</div>
						</div>
						<button class="select01">선택완료</button>
					</div>
					<br>
					<br>
					<hr>
					<br>
					<h3 style="margin-left: 94px">쿠폰/적립금</h3>
					<div id="sform03">
						<br> 할인쿠폰<span style="color: skyblue; margin-left: 10px;">4개</span><br>
						<select style="width: s296px;ss height: 30px;">
							<option disabled selected>쿠폰을 선택해 주세요</option>
							<option>1</option>
							<option>2</option>
						</select> <br>
						<br> 적립금<span style="color: skyblue; margin-left: 10px;">0개</span><br>
						<input text="text" name="point"
							style="width: 241px; height: 30px;" value="0">
						<button class="select02">적용</button>
					</div>
					<br>
					<br>
					<br>
					<hr>
					<br>
					<h3 style="margin-left: 94px">최종결제금액</h3>
					<br>
					<h3 class="finalprice">8000000원</h3>
					<div id="sform04">
				
							<i class="fa-solid fa-chevron-down" id="flip01" ></i>
				<div id="panel01">
			      
			        <div class="consent">
			          <table>
			             <tr><th>총 상품금액</th><td class="amount03">1000원</td></tr>
			             <tr><th>상품할인</th><td class="amount03" style="color:blue;">1000원</td></tr>
			             <tr><th>쿠폰할인</th><td class="amount03" style="color:blue;">1000원</td></tr>
			             <tr><th>적립금</th><td class="amount03" style="color:blue;">1000원</td></tr>
			             <tr><th>배송비</th><td class="amount03" style="color:blue;">0</td></tr>
			             <tr><th>관부가세</th><td class="amount03" style="color:blue;">포함</td></tr>
			          </table>
			        </div> 
			     <hr style="width:299px;">
			    </div>
			   
			
					
						<table>

							<tr>
								<td>최대 구매 혜택</td>
								<td class="amount01" style="color: blue;">1000000원 적립</td>
							</tr>
							<tr>
								<td>기본적립0.5%</td>
								<td class="amount01" style="color: lightgray;">1000원</td>
							</tr>
							<tr>
								<td>기본적립0.5%</td>
								<td class="amount01" style="color: lightgray;">1000원</td>
							</tr>
						</table>

			
					</div>
					
					
					<h3 style="margin-left: 94px">결제방법</h3>
				   <br>
					<div id="sform05">
					<br>
					
					<!-- 카카오 -->
					<div class="box01">
					<img src="/Gain/buy/kakao.png" class="kakao">
					<div class="kakao01">최대 15만원 할인</div>
					</div>
					<!-- 네이버 -->
					<div class="box02">
					<img src="/Gain/buy/NPay.png" class="naver">
					<div class="npay">최대 3% 적립</div>
					</div>
					
					<div class="box03">
					 <div class="card">신용카드</div>
					</div>
					
					<div class="box04">
					 <div class="Vaccount">가상계좌</div>
					</div>
					
					<div class="box05">
					 <div class="reccount">실시간계좌이체</div>
					</div>	
					</div>
                     <br><br><br><br><br><br><br><br><br><br><br><br>
					<hr>
				    <br>
		  
  	          <div id="sform01">
				<div>주문 정보 및 서비스 약관에 동의합니다</div>
				<i class="fa-solid fa-chevron-down" id="flip"></i>
			  
			  </div>
			    <div id="panel">
			      
			        <div class="consent">
			         <ul>
			             <li>구매할 상품의 정보 및 가격을 확인하였으며 이에 동의함
			             <li>배송,상담 및 불만처리를d 위한 개인정보 판매자 제공에 동의함
			         </ul>
			        </div> 
			     
			    </div>
			  <button class="select03">결제하기</button>
			  <br><br>
			  <div id="sform01">
			   <h3 style="margin-left: -6px;font-size:20px;">주문자 정보</h3>
			  
			  <div>김동은</div> 
			  <div>전화번호/폰번호</div>
			  <div>이메일</div>
			  <br><br>
			  </div>
			 
			  
				</form>
			</div>


		</div>
 


	</section>
	<footer> </footer>
</body>
<script type="text/javascript">
	
</script>
</html>