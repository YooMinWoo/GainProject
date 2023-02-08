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
<link rel="stylesheet" href="/Gain/markup/reset.css"/>
<style type="text/css">

        .main_wrapper{
           	padding: 50px 0;
        }

        .main_title{
            text-align: center;
            font-weight: 500;
            font-size: 32px;
            line-height: 38px;
        }
        
        form{
        	margin: auto;
        	width: 313px;
        	padding: 70px 0 0;
        }
        
       	form h3{
	       	font-size: 20px;
		    font-weight: 400;
		    line-height: 60px;
       	}
       	
       	input[type=text]{
      		width: 300px;
		    height: 30px;
		    padding-left: 10px;
		    font-size: 17px;
		    font-family: inherit;
		    border-radius: 4px;
		   	border: 1px solid #666;
       	}
       	
       	input[type=date]{
      		width: 300px;
		    height: 30px;
		    padding-left: 10px;
		    font-size: 17px;
		    font-family: inherit;
		    border-radius: 4px;
		    border: 1px solid #666;
       	}
       	
       	.BtnCls{
       	    width: 135px;
		    height: 45px;
		    background: #ddd;
		    border: none;
		    font-size: 20px;
		    font-weight: 600;
		    font-family: inherit;
		    border-radius: 4px;
		    margin: 70px auto 0;
		    display: block;
		    cursor: pointer;
       	}
       	
       	.btns{
       		display: flex;
       	}

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
        <div class="main_wrapper">
            <h2 class="main_title">쿠폰 생성하기</h2>
			<form class="makeForm">
				<h3>쿠폰 이름</h3>
				<input type="text" name="couponName">
				<h3>할인율</h3>
				<input type="text" name=couponPercent placeholder="숫자만 입력하세요">%
				<h3>쿠폰 만료일</h3>
				<input type="date" name="couponEndDate"><br>
				<div class="btns">
					<button type="submit" class="BtnCls" onclick="alert('쿠폰이 생성되었습니다.')">생성하기</button>
					<button type="button" class="BtnCls" onclick="location.href='${path}/couponAdmin.do'">쿠폰 조회</button>
				</div>
			</form>
        </div>
    <!-- 여기까지만 작업 -->
    </section>
    <footer>
    	<div class="footer_left">
			<img alt="" src="/Gain/markup/img/GAIN_mainlogo.png" style="padding:20px 0; width:100px;">
			<p style="font-size:15px;line-hight:25px;">
			(주)가인
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

</script>
</html>