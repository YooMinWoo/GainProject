<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 손 안의 백화점, 가인</title>
<!-- 제이쿼리 CDN -->
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/Gain/markup/reset.css"/>
<style type="text/css">

</style>
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
            <a href="/Gain/markup/main_index.jsp"><img src="/Gain/markup/img/GAIN_mainlogo.png" alt="가인 메인 로고"></a>
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
	<section>
	<!-- 여기서부터 작업 -->
	<style>
		.myPageList{
			width: 700px;
			margin: 0px auto;
			display:flex;
			flex-direction: column;
			gap: 15px;
    		padding: 20px 0px;
		}
		.list{
			width:500px;
			margin:0px auto;
			border:1px solid lightgray;
			border-radius:6px;
			height:60px;
			display: flex;
		    justify-content: space-between;
    		align-items: center;
    		padding: 0px 20px;
		    font-size: 17px;
		    font-weight: 900;
		    cursor: pointer;
		}
	</style>
	<script>
		$(document).ready(function(){
			$("button").click(function(){
				var link = $(this).attr('id')
				location.href="/Gain/"+link+".do"
			})
		})
	</script>
        <div class="main_wrapper">
			<div class="myPageList">
				<button id="buylist" type="button" class="list"> <!-- 주문내역 -->
					<span>주문내역</span><span></span>
				</button>
				<button id="couponAdmin" type="button" class="list"> <!-- 쿠폰조회 -->
					<span>쿠폰조회</span><span></span>
				</button >
				<button type="button" class="list"> <!-- 적립금 -->
					<span>적립금</span><span>${login.point }원</span>
				</button>
				<button id="shoppingBasket" type="button" class="list"> <!-- 장바구니 -->
					<span>장바구니</span><span></span>
				</button>
				<button id="infoUpt" type="button" class="list"> <!-- 회원정보수정 -->
					<span>회원정보수정</span><span></span>
				</button>
				<button id="ask" type="button" class="list"> <!-- 1:1문의 -->
					<span>1:1문의</span><span></span>
				</button>
				<button id="logout" type="button" class="list"> <!-- 로그아웃 -->
					<span>로그아웃</span><span></span>
				</button>
			</div>
        </div>
    <!-- 여기까지만 작업 -->
    </section>
    <footer>
    	<div class="footer_left">
			<img alt="" src="/Gain/markup/img/GAIN_mainlogo.png" style="padding:20px 0; width:100px;">
			<p style="font-size:15px; line-height:25px;">
			(주)머스트잇
			대표 : 유민우<br>
			소재지 : 서울시 신촌로 12길 22<br>
			사업자등록번호 : 123-456-789<br>
			개인정보보호책임자 : 이수민<br>
			E-MAIL : help@gain.co.kr
			</p>
			<p style="font-size:12px; line-height:20px; padding:10px 0;">
			해당 사이트는 프로젝트용 사이트로 실제로 존재하는 사이트가 아닙니다.<br>
			쌍용강북센터 프로젝트 3팀
			COPYRIGHT 2023 가인 ALL RIGHT RESERVED.
			</p>
    	</div>
    	<div class="footer_right">
    	<h2 style="padding:10px 0;"><a class="footer_FAQ" href="#">고객센터</a> 1234-5678</h2>
    	
    	<p>
			AM 10:00 ~ PM 06:00<br>
			점심시간 12:50 - 14:00
			(주말/공휴일 휴무)
			<br><br>
			상품, 배송, 재고 등의 문의는 고객센터 페이지 문의하기를 이용하시면<br>
			더욱 정확한 답변을 받으실 수 있습니다.<br>
			<br>
			쌍용은행 채무지급보증 안내
			당사는 고객님이 현금 결제한 금액에 대해 쌍용은행과 채무지급보증<br> 
			계약을 체결하여 안전거래를 보장하고 있습니다.
    	</p>
    	</div>
    </footer>
</body>
<script type="text/javascript">


</script>
</html>