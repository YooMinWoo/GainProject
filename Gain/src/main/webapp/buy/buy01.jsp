<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- i태그 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>내 손 안의 백화점, 가인</title>s
<style type="text/css">
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: #333;
}

li {
	list-style: none;
}

img {
	border: none;
	vertical-align: top;
}

body {
	font-family: 'Pretendard-Regular';
}

.clearfix::after {
	content: '';
	display: block;
	clear: both;
}

.gnb {
	width: 100%;
	height: 50px;
	background-color: #000;
	color: #fff;
	display: flex;
	justify-content: space-between;
}

.gnb_left {
	width: 20%;
	text-align: center;
	line-height: 50px;
}

.gnb_center {
	width: 50%;
	text-align: center;
	line-height: 50px;
}

.gnb_right {
	width: 20%;
}

.gnb_right ul {
	display: flex;
	gap: 40px;
}

.gnb a {
	color: #fff;
	line-height: 50px;
}

.main_logo {
	width: 100%;
	height: 120px;
	text-align: center;
}

.main_logo img {
	padding-top: 34px;
}

.lnb ul {
	display: flex;
	font-size: 20px;
	gap: 40px;
	justify-content: center;
}

.lnb a {
	line-height: 25px;
	font-weight: 600;
}

.lnb a:hover {
	color: #ed3124;
}

header {
	border-bottom: 3px solid #000;
	padding-bottom: 15px;
}



.flex-container {
	width: 1000px;
	height: 1400px;
	border: 1px solid lightgray;
	border-radius: 12px 12px;
	margin: 0 auto;
	margin-top: 42px;
	BACKGROUND-COLOR: white;
	background: #f8f9f7
}

.shipping-address {
	width: 500px;
	height: 1284px;
	border: 1px solid lightgray;
	margin: 0 auto;
	margin-top: -1px;
}

#sform01 {
	display: inline-block;
	width: 100%;
	margin-left: 96px
}

#sform02 {
	display: inline-block;
	width: 100%;
	margin-left: 96px
}

#sform03 {
	display: inline-block;
	width: 100%;
	margin-left: 96px
}

#sform04 {
	display: inline-block;
	width: 100%;
	margin-left: 96px
}

#sform05 {
	display: inline-block;
	width: 100%;
	margin-left: 96px
}

#sform05 {
	display: inline-block;
	width: 100%;
	margin-left: 96px
}

.change {
	position: absolute;
	margin-left: 339px;
	margin-top: -20px;
}

.pdinfo {
	position: absolute;
	margin-left: 103px;
	margin-top: -84px;
	font-size: 17px;
}

.select01 {
	width: 296px;
	height: 34px;
	background: black;
	color: white;
	margin-top: 10px;
}

.select02 {
	position: absolute;
	width: 48px;
	margin-left: 6px;
	height: 30px;
}

.select03 {
    width: 296px;
    height: 34px;
    background: black;
    color: white;
    margin-top: 22px;
    margin-left: 88px;
}

/* 드롭다운 */
.dropdown-content {
	display: none;
	position: absolute;
	z-index: 1; /*다른 요소들보다 앞에 배치*/
}

.dropdown:hover .dropdown-content {
	display: inline;
}


.amount01 {
	text-align: end;
	width: 200px;
}

.amount02 {
	text-align: end;
	width: 218px;
}
.amount03 {
	text-align: end;
	width: 218px;
}

.box01{
    width: 145px;
    border: 1px solid black;
    height: 67px;
}

.kakao{
    width: 70px;
    position: absolute;
    margin-top: 8px;
    margin-left: 40px;
 
}
.kakao01{
    font-size: 15px;
    color: blue;
    margin-top: 40px;
    position: absolute;
    margin-left: 23px;
}

.box02{
    width: 145px;
    border: 1px solid black;
    height: 67px;
    position: absolute;
    margin-left: 150px;
    margin-top: -67px;
}

.naver{
    width: 70px;
    position: absolute;
    margin-left: 37px;
    margin-top: 8px;
}

.npay{
    font-size: 15px;
    color: blue;
    margin-top: 40px;
    position: absolute;
    margin-left: 33px;
}

.box03{
    width: 145px;
    border: 1px solid black;
    height: 67px;
    position: absolute;
    margin-left: 1px;
    margin-top: 7px;
}

.box04{
    width: 145px;
    border: 1px solid black;
    height: 67px;
    position: absolute;
    margin-left: 151px;
    margin-top: 7px;
}
.card{
    position: absolute;
    margin-left: 42px;
    margin-top: 21px;
}

.Vaccount{
    position: absolute;
    margin-left: 42px;
    margin-top: 21px;
}

.box05{
    width: 145px;
    border: 1px solid black;
    height: 67px;
    position: absolute;
    margin-left: 1px;
    margin-top: 82px;
}

.reccount{
    position: absolute;
    margin-left: 21px;
    margin-top: 21px;
}

#panel01, #flip01 {
  
  text-align: center;
}

#panel01{
  padding: 1px; 
  display: none; 
  width:310px;

}

#flip01{
    position: absolute;
    margin-left: 271px;
    margin-top: -41px;
}


#panel, #flip {
  padding: 5px;
  text-align: center;
}

#panel{
  padding: 50px; 
  display: none; 
  border: 1px solid;
  background: lightgoldenrodyellow;
}


#flip{
    position: absolute;
    margin-left: 260px;
    margin-top: -22px;
}

.finalprice{
    position: absolute;
    margin-top: -41px;
    margin-left: 267px;
}

.consent ul li{
   text-align: center;
}
input{
 border:0 solid black
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
	  
	});
</script>
</head>

<body>
	<header>
		<div class="gnb">
			<div class="gnb_left">내 손 안의 백화점, 가인</div>
			<div class="gnb_center">The department store in my hand</div>
			<nav class="gnb_right">
				<ul>
					<li><a href="#">로그아웃</a></li>
					<li><a href="#">마이페이지</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</nav>
		</div>
		<h1 class="main_logo">
			<a href="#"><img src="/Gain/markup/img/GAIN_mainlogo.png"
				alt="가인 메인 로고"></a>
		</h1>
		<nav class="lnb">
			<ul>
				<li><a href="#">전체 상품</a></li>
				<li><a href="#">의류</a></li>
				<li><a href="#">슈즈</a></li>
				<li><a href="#">가방</a></li>
				<li><a href="#">액세서리</a></li>
				<li><a href="#">주얼리</a></li>
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
				<button class="change">변경</button>
				<form>
					<div id="sform01">
						<input type="text" name="address"
							placeholder="경기 성남시 분당구 백현동 565-6 그레이스빌" style="width: 55%"><br>
						<input type="text" name="username" placeholder="김동은"
							style="width: 10%"> <input type="text" name="phoneno"
							placeholder="전화번호/폰번호"><br> <br> 배송메시지<br>
						<textarea placeholder="내용을 입력해주세요" style="width: 55%"></textarea>
						<br> <br>
					</div>
					<hr>
					<!-- 주문상품(사진) -->
					<br>
					<h3 style="margin-left: 94px">주문상품(총1개)</h3>
					<div id="sform01">
						<div style="border: 1px solid black; width: 90px; height: 90px;">사진</div>
						<div class="pdinfo">
							<div>상품명</div>
							<input text="text" name="pname" placeholder="22Fw여성 후드 롱 패딩">
							<br> <br>
							<div style="color: purple">01/18(수)출발</div>
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
				<div>주문 정보 및 서비스 약관에 동의합니다</div><i class="fa-solid fa-chevron-down" id="flip"></i>
			  
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