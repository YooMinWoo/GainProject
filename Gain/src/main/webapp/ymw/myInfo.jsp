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
    		padding: 0px 20px;
		    font-size: 17px;
		    font-weight: 900;
		}
		.infos{
			display: flex;
    		align-items: center;
    		justify-content: space-between;
		}
		.doneBtnDiv{
			display: flex;
		    margin: 0px auto;
		    margin-top: 40px;
		}
		.doneBtn{
			width: 200px;
		    height: 45px;
		    background: black;
		    border: none;
		    border-radius: 6px;
		    color: white;
		    font-size: medium;
		    font-weight: 900;	
		    cursor: pointer;
		}
	</style>
	<script>
		$(document).ready(function(){
			$(".doneBtn").click(function(){
				var nickNameReg = /^[A-Za-z][A-Za-z0-9]{5,14}$/g;
				var n_RegExp = /^[가-힣]{2,15}$/;
				var phoneReg = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		        if( !nickNameReg.test( $("input[name=nickname]").val() ) ) {
		            alert("닉네임은 영문자로 시작하는 6~15자 영문자 또는 숫자이어야 합니다.");
		            $("input[name=nickname]").focus()
		            return;
		        }
		        if(!n_RegExp.test($("input[name=name]").val() ) ) {
		            alert("이름에는 특수문자,영어,숫자는 사용할수 없습니다. 한글만 입력하여주세요.(2자 이상 입력)");
		            $("input[name=gainName]").focus()
		            return;
		        }
		        if(!phoneReg.test($("input[name=phonenum]").val() ) ) {
		            alert("휴대폰 번호를 확인해주세요(숫자만 입력)");
		            $("input[name=phonenum]").focus()
		            return;
		        }
		        alert("수정이 완료되었습니다.")
				//$("#frm01").attr("action","/Gain/goMain.do");
				// $("#frm01").submit();
			})
		})
	
	</script>
        <div class="main_wrapper">
        	<form id="frm01">
			<div class="myPageList">
				<div class="infos">
					<div>
						<span>닉네임</span>
					</div>
					<div>
						<input id="buylist" value="${login.nickname }" type="text" class="list" name="nickname">
					</div>
				</div>
					
				<div class="infos">
					<div>
						<span>이름</span>
					</div>
					<div>
						<input id="buylist" value="${login.name }" type="text" class="list" name="name">
					</div>
					
				</div>
				
				<div class="infos">
					<div>
						<span>휴대폰번호</span>
					</div>
					<div>
						<input id="buylist" value="${login.phonenum }" type="text" class="list" name="phonenum"> <!-- 주문내역 -->
					</div>
				</div>
				<div class="doneBtnDiv">
					<button type="button" class="doneBtn">수정완료</button>
				</div>
			</div>
			</form>
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