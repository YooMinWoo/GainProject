<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 손 안의 백화점, 가인</title>
<!-- 제이쿼리 CDN -->
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

<!-- 슬라이드 플러그인 JS, CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="/Gain/markup/reset.css"/>

<style type="text/css">
  
  	.bar{
  		width:980px; height:10px; background:black; margin-left:120px;
  		display:inline-block;
  	}
 	.btn{
  		background:black;
  		width:160px;
  		height:45px;
  		color:white;
  		border-radius:4px;
  		margin-left:530px;
  		margin-top:30px;
  	}
  	.prod{
  		width:300px;
  		height:300px;
  		margin-left:460px;
  		margin-top:20px;
  	}
  	.status{
  		background:#0054FF;
  		width:55px;
  		height:30px;
  		margin-left:460px;
  	}
  	.endDate{
  		width:320px;
  		height:60px;
  		border:1px solid black;
  		margin-left:450px;
  	}
</style>
</head>
<script>
$(document).ready(function(){
	
	
})

</script>
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
	<section>
        <div class="main_wrapper">
	      	<h2 style="margin-left:580px;">Raffle</h2>
	      	<div class="bar"></div>
	      	<br><br>
	      	<c:forEach var="myRaf" items="${myRafList }">
	      	<img src="/Gain/markup/img/${myRaf.imgSrc }" class="prod"/>
	      	<br><br>
	      	<div class="status">
	      		<h4 style="color:white; padding:5px 5px;">${myRaf.result }</h4>
	      	</div>
	      	<br>
	      	<h4 style="margin-left:460px;">${myRaf.pname }</h4>
	      	<br><h4 style="margin-left:460px;">Gain | RAFFLE_${myRaf.rafId }</h4><br><br>
	      	<div class="endDate"><br>
	      		<h3 style="margin-left:50px; color:lightgray;">
	      		${myRaf.choDate } 당첨자 발표 예정</h3>
	      	</div>
	      	</c:forEach>
        </div>
    </section>
    <footer>
    	<div class="footer_left">
			<img alt="" src="/Gain/markup/img/GAIN_mainlogo.png" style="padding:20px 0; width:100px;">
			<p style="font-size:15px;line-hight:25px;">
			(주)머스트잇
			대표 : 유민우<br>
			소재지 : 서울시 신촌로 12길 22<br>
			사업자등록번호 : 123-456-789<br>
			개인정보보호책임자 : 이수민<br>
			E-MAIL : help@gain.co.kr
			</p>
			<p style="font-size:12px;line-hight:20px; padding:10px 0;">
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
	const swiper = new Swiper('.swiper', {
	    // Optional parameters
	    sldiesPerView: 1,
	    direction: 'horizontal',
	    loop: true,
	    autoplay: {
	        delay: 1500,
	    },
	    effect: 'fade',
	    fadeEffect: {
	      crossFade: true
	    }
	});
</script>
</html>