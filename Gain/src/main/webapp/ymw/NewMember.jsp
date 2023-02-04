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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
<link rel="stylesheet" href="/Gain/markup/reset.css"/>
<style type="text/css">


/* 
	↑↑↑ 위에 css 지워야 함 ↑↑↑
	
	위에 css는 섹션 위치 확인하시라고 
	높이값이랑 색깔값 넣었어요
	위치만 확인하고 지워주세요!
	
	1) 헤더는 로그인 세션 처리할 때 c:if로 바꿀 예정
	
	2) <div class="main_wrapper"> 안에만 내용 넣어 주세요.
			해당 div는 1200px이라서 안에 크기는 px로 조절하시면 됩니다.
			
	3) reset.css를 꼭 link로 걸어주시고 수정 절대 금지!
	-> 수정하면 모든 페이지가 다 바뀝니다!
			<link rel="stylesheet" href="/Gain/markup/reset.css"/>
			
	4) 제이쿼리는 CDN으로 넣었어요. 최신 버전으로 넣었는데 문제 생기면 말씀해주세요!
			<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

 */


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
	<style>
		.join_outline{
			width:800px;
			margin: 0px auto;
			display: flex;
			flex-direction: column;
			padding-bottom:200px;
		}
		.Box{
			margin:0px auto;
			padding-top: 20px;
		}
		.inputBox{
			border:none;
			width : 100%;
			box-sizing : border-box;
			display:flex;
			margin:15px;
		}
		.inputBox:focus{
			outline:none;
		}
		.inputInfo{
			border:1px solid lightgray;
			width:400px;
			display:flex;
			border-radius:6px;
		}
		.Box label{
			cursor: text;
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".inputInfo input").each(function(index, ea){
				$(".inputBox"+index).focus(function(){
					$(this).parent().css({"outline":"2px solid black"})
				})
				$(".inputBox"+index).blur(function(){
					$(this).parent().css({"outline":"none"})
				})
			})
			
			$("#cbx_chkAll").click(function() {
				if($("#cbx_chkAll").is(":checked")) $(".chk").prop("checked", true);
				else $(".chk").prop("checked", false);
			});

			$(".chk").click(function() {
				var total = $(".chk").length;
				var checked = $(".chk:checked").length;

				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
			});
			
			$(".doneBtn").click(function(){
				var idReg = /^[A-Za-z](?=.*[0-9])(?=.*[A-Za-z]).{5,11}$/g;
				var nickNameReg = /^[A-Za-z][A-Za-z0-9]{5,14}$/g;
				var pwReg = /(?=.*[0-9])(?=.*[A-Za-z]).{10,20}$/;
				var n_RegExp = /^[가-힣]{2,15}$/;
				var phoneReg = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
				var birth = /^(19\d{2}|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
				
		        if( !idReg.test( $("input[name=id]").val() ) ) {
		            alert("아이디는 영문자로 시작하는 6~12자 영문자 또는 숫자이어야 합니다.");
		            $("input[name=id]").focus()
		            return;
		        }
		        if( !nickNameReg.test( $("input[name=nickname]").val() ) ) {
		            alert("닉네임은 영문자로 시작하는 6~15자 영문자 또는 숫자이어야 합니다.");
		            $("input[name=nickname]").focus()
		            return;
		        }
		        if( !pwReg.test( $("input[name=gainPassword]").val() ) ) {
		            alert("비밀번호는 영문숫자 조합 10~20자");
		            $("input[name=gainPassword]").focus()
		            return;
		        }
		        if(!n_RegExp.test($("input[name=gainName]").val() ) ) {
		            alert("이름에는 특수문자,영어,숫자는 사용할수 없습니다. 한글만 입력하여주세요.");
		            $("input[name=gainName]").focus()
		            return;
		        }
		        if(!phoneReg.test($("input[name=gainPhoneNumber]").val() ) ) {
		            alert("휴대폰 번호를 확인해주세요(숫자만 입력)");
		            $("input[name=gainPhoneNumber]").focus()
		            return;
		        }
		        if(!birth.test($("input[name=gainBirthday]").val() ) ) {
		            alert("생년월일을 확인해주세요(숫자만 입력)");
		            $("input[name=gainBirthday]").focus()
		            return;
		        }
		        
		        if($('input[name=gainGender]:checked').val()==null){
		        	alert("성별을 선택해주세요.")
		        	return;
		        }
		        if(($("input[name=address]").val()=="" ) ) {
		            alert("주소를 입력해주세요");
		            $("input[name=address]").focus()
		            return;
		        }
		        if(($("input[name=address_detail]").val()=="" ) ) {
		            alert("상세주소를 입력해주세요");
		            $("input[name=address_detail]").focus()
		            return;
		        }
		        if($('input[name=agree]:checked').val()==null){
		        	alert("필수 약관을 체크해주세요.")
		        	return;
		        }
			})
			
		})
	</script>
	<!-- 여기서부터 작업 -->
        <div class="main_wrapper">
			<div class="join_outline">
				<div class="Box">
					<div><span>*</span><span>아이디</span></div>
					<label>
						<div class="inputInfo">
							<input class="inputBox0 inputBox" type="text" name="id" placeholder="영문 숫자 6자 이상 12자 이하">
						</div>
					</label>
				</div>
				
				<div class="Box">
					<div><span>*</span><span>닉네임</span></div>
					<label>
						<div class="inputInfo">
							<input class="inputBox1 inputBox" type="text" name="nickname" placeholder="6~15자(영문,숫자)">
						</div>
					</label>
				</div>
				
				<div class="Box">
					<div><span>*</span><span>비밀번호</span></div>
					<label>
						<div class="inputInfo">
							<input class="inputBox2 inputBox" type="password" name="pass" placeholder="10~16 영문 숫자 조합">
						</div>
					</label>
				</div>
				
				<div class="Box">
					<div><span>*</span><span>이름</span></div>
					<label>
						<div class="inputInfo">
							<input class="inputBox3 inputBox" type="text" name="name" placeholder="실명 입력">
						</div>
					</label>
				</div>
				
				<div class="Box">
					<div><span>*</span><span>휴대폰</span></div>
					<label>
						<div class="inputInfo">
							<input class="inputBox4 inputBox" type="text" name="phoneNum" placeholder="'-' 생략">
						</div>
					</label>
				</div>
				
				<div class="Box">
					<div><span>*</span><span>생년월일</span></div>
					<label>
						<div class="inputInfo">
							<input class="inputBox5 inputBox" type="text" name="birth" placeholder="8자리 숫자(19990527)">
						</div>
					</label>
				</div>
				<div class="checkBox">
					<div><span>*</span><span>성별</span></div>
					<div class="checks2">
						<label class="checks">
							<input type="radio" name="sex" value="man" class="chk" >
							<span>남자</span>
						</label>
						<label class="checks">
							<input type="radio" name="sex" value="woman" class="chk" >
							<span>여자</span>
						</label>
					</div>
				</div>
				<div class="Box">
					<div><span>*</span><span>주소</span></div>
					<label>
						<div class="inputInfo">
							<input class="inputBox" id="address_kakao" type="text" name="address" placeholder="주소입력" readonly="readonly">
						</div>
					</label>
					<label>
						<div class="inputInfo">
							<input class="inputBox6 inputBox" type="text" name="address_detail" placeholder="상세주소입력">
						</div>
					</label>
				</div>
				<style>
					.checkBox{
						display:flex;
						width:400px;
						margin:0px auto;
						flex-direction: column;
						gap: 10px;
    					padding-top: 30px;
					}
					.checks{
						display: flex;
						gap:15px;
					}
					hr{
						border:1px solid lightgray;
					}
					.checks2{
						display:flex;
						flex-wrap: wrap;
    					justify-content: space-between;
   					    gap: 7px;
					}
					.checks2 .checks{
						width:34%;
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
				<div class="checkBox">
					<div><label class="checks">
						<input type="checkbox" name="useInfo">
						<span>이용약관 및 개인정보처리방침에 동의(필수)</span>
					</label></div>
					<div><label class="checks">
						<input type="checkbox" id="cbx_chkAll">
						<span>마케팅 수신 전체동의(선택)</span>
					</label></div>
					<hr>
					<div class="checks2">
						<label class="checks">
							<input type="checkbox" name="permisSms" class="chk" >
							<span>문자</span>
						</label>
						<label class="checks">
							<input type="checkbox" name="permisEmail" class="chk" >
							<span>이메일</span>
						</label>
						<label class="checks">
							<input type="checkbox" name="permisAppPush" class="chk" >
							<span>APP 푸시</span>
						</label>
						<label class="checks">
							<input type="checkbox" name="permisMail" class="chk" >
							<span>우편발송</span>
						</label>
						<label class="checks">
							<input type="checkbox" name="permisPhone" class="chk" >
							<span>전화안내</span>
						</label>
					</div>
				</div>
				<div class="doneBtnDiv">
					<button type="button" class="doneBtn">회원가입</button>
				</div>
			</div>
        </div>
    <!-- 여기까지만 작업 -->
    </section>
    <footer>
    	<div class="footer_left">
			<img alt="" src="/Gain/markup/img/GAIN_mainlogo.png" style="padding:20px 0; width:100px;">
			<p style="font-size:15px;line-height:25px;">
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


</script>
</html>