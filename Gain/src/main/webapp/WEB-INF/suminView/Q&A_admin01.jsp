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
  		width:980px; height:10px; background:black; margin-left:115px;
  		
  	}
  	hr{
  		width:500px;
  		color:lightgray;
  		display:inline-block;
  		margin-left:110px;
  		margin-top:10px;
  	}
  	h5{
  		margin-left:10px;
  		color:red;
  	}
  	select{
  		margin-left:205px;
  		width:300px;
  		height:38px;
  		border-radius:4px;
  	}
  	.input_title{
  		margin-left:205px;
  		width:400px;
  		height:38px;
  		border-radius:4px;
  		border:1px solid #4C4C4C;
  	}
  	textarea{
  		margin-left:205px;
  		width:800px;
  		height:400px;
  		border-radius:4px;
  	}
  	.btn{
  		background:black;
  		width:100px;
  		height:45px;
  		color:white;
  		border-radius:4px;
  		margin-left:800px;
  		margin-top:5px;
  	}
	.menu{
		font-size:25px;
		font-weight:bold;
	
	}
	.question{
		width:930px;
		height:100px;
		margin-left:130px;
		
	}
	.reply{
		width:930px;
		height:300px;
		margin-left:130px;
		margin-top:10px;
		background:lightgray;
		
	}
</style>
</head>
<script>
$(document).ready(function(){
	$(".question").hide()
	$(".reply").hide()
	
	var cnt = 0
	$("#reply").click(function(){
		cnt ++
		if(cnt%2==1){
			$(".question").show()
			$(".reply").show()
		}else{
			$(".question").hide()
			$(".reply").hide()
		}
	})
		
	$("#addReply").click(function(){
		var replyVal = $("[name=reply]").val()
		if(replyVal==""){
			alert("답변내용을 입력하세요")
		}else{
			$("#reFrm").submit()
			 var msg ="${msg}"
			 if(msg!=null){
				if(confirm(msg+"문의내역으로 이동하시겠습니까?")){
					location.href="${path}/qnaList.do"
				}
			 }
		}
	})
			
		
		
		

})
	
</script>
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
            <a href="#"><img src="/Gain/markup/img/GAIN_mainlogo.png" alt="가인 메인 로고"></a>
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
        <div class="main_wrapper">
	      
	      	<a href="Q&A_mem02.jsp" class="menu" style="margin-left:570px;">문의내역</a>
	      	<div class="bar"></div>
	      	<c:forEach var="qna" items="${qnaList }">
	      		
		      	<h4 style="margin-left:120px; margin-top:20px;">${qna.title }</h4>
		      	<h4 style="display:inline; margin-left:120px; margin-top:15px;">${qna.state }</h4>
		      	<h5 style="color:#5D5D5D; display:inline;">${qna.category }</h5>
		      	<h5 style="color:#5D5D5D; display:inline;">${qna.regDate }</h5>
		      	<button type="button" id="reply">▼</button>
		      	<div class="question"><h2 style="padding:10px 10px;">Q</h2>
		      	${qna.content }
		      	
	      		</div>
	      	<div class="reply">
		      	<h2 style="padding:10px 10px;">A</h2>
		      	<form id="reFrm" action="${path }/update.do" method="post">
		      		<input type="hidden" name="qna_no" value="${qna.qna_no }">
		      		<textarea name="reply" style="width:870px; height:180px; margin-left:30px;"></textarea>
		      		<button class="btn" type="submit" id="addReply">답변 등록하기</button>
		      	</form>
	     	</div>
	     	</c:forEach>
	      	<br><br>
	      	<hr style="width:980px;">

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