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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet" href="/Gain/markup/reset.css"/>
<link rel="stylesheet" href="/Gain/heejun/searchPage.css"/>
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
<script type="text/javascript">
	$(document).ready(function(){
		
	})
	

</script>
</head>

<body>
    <header>
         <div class="gnb">
            <div class="gnb_left">내 손 안의 백화점, 가인</div>
            <div class="gnb_center">The department store in my hand</div>
            <nav class="gnb_right">
                <ul>
                    <li><a href="/Gain/logout.do">로그아웃</a></li>
                </ul>
            </nav>
         </div>
         <h1 class="main_logo">
            <a href="/Gain/goAdminMain.do"><img src="/Gain/markup/img/GAIN_mainlogo.png" alt="가인 메인 로고"></a>
         </h1>
         <nav class="lnb">
            <ul>
                <li><a href="/Gain/getProdListAdmin.do">상품 등록/수정</a></li>
                <li><a href="/Gain/qnaList.do">Q&A 답변</a></li>
                <li><a href="/Gain/rafUploadFrm.do">래플 등록</a></li>
                <li><a href="/Gain/couponAdmin.do">쿠폰 조회</a></li>
                <li><a href="/Gain/addCoupon.do">쿠폰 생성</a></li>

            </ul>
         </nav>
    </header>
	<section>
	<!-- 여기서부터 작업 -->
        <div class="main_wrapper">
        	<h2 class="choice_category">${category.categoryName}${all}</h2>
        	<div class="content">
				<div class="left_content">
					<h3>${category.categoryName}${all}</h3>
					<ul class="category_subsection">
						<li id="all">
							<a href="${path}/getProdList.do?categoryNum=${category.categoryNum}&detailNum=''">전체 보기</a>
						</li>
						<c:forEach var="detail" items="${detail}">
						<li>
							<a onclick="Detail('${category.categoryNum}','${detail.detailNum}')">${detail.detailName}</a>
						</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="right_content">
					<div class="insBtn_area">
						<button class="insBtn" type="button">상 품 등 록 +</button>
					</div>
					<div class="product_area">
						<ul class="product_list">
							<c:forEach var="prod" items="${plist}" varStatus="status">
							<li>
								<div class="thumb">
									<a onclick="goDetailPage('${prod.prodNum}','${prod.categoryNum}')">
										<img src="/Gain/sumin/${prod.prodImg}">
									</a>
								</div>
								<div class="product_info">
									<a onclick="goDetailPage('${prod.prodNum}','${prod.categoryNum}')">
										<dl>
											<dt>${brand[status.index]}</dt>
											<dd>
												<p class="product_name">${prod.prodName}</p>
												<div class="price_info">
													<div class="price">
														<span><fmt:formatNumber value="${prod.prodPrice-prod.prodPrice*0.2}"/></span>원 
													</div>
													<div class="per"><span>20</span>%</div>
												</div>
											</dd>
										</dl>
									</a>
								</div>
								<div class="button_info">
									<button class="udtBtn" type="button" onclick="goUdtPage('${prod.prodNum}')">수 정</button>
									<button class="delBtn" type="button" onclick="delProd('${prod.prodNum}')">삭 제</button>
								</div>
							</li>
							</c:forEach>

						</ul>
					</div>
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
	$(document).ready(function() {
	    $(".insBtn").click(function(){
			  Swal.fire({
				  title: '상품등록 페이지로\n 이동하시겠습니까?',
				  icon: 'question',
				  showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
				  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				  cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
				  confirmButtonText: '확인', // confirm 버튼 텍스트 지정
				  cancelButtonText: '취소' // cancel 버튼 텍스트 지정
				}).then((result) => {
				  if (result.value) {
					//"확인" 버튼을 눌렀을 때 작업할 내용
					location.href = "${path}/insertProd.do"
				  }
				})	    	
	  	})			
		var all = "${all}"
	    if(all != ""){
	    	$("#all").hide();
	    }
		
	    var insMsg = "${insMsg}"
	    if(insMsg != ""){
			  Swal.fire({
				  title: '상품등록 성공!',
				  icon: 'success',
				  showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
				  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				  confirmButtonText: '확인', // confirm 버튼 텍스트 지정
				}).then((result) => {
				  if (result.value) {
					//"확인" 버튼을 눌렀을 때 작업할 내용
				  }
				})	
	    }
	    
	    var udtMsg = "${udtMsg}"
	    if(udtMsg != ""){
			  Swal.fire({
				  title: '상품수정 성공!',
				  icon: 'success',
				  showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
				  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				  confirmButtonText: '확인', // confirm 버튼 텍스트 지정
				}).then((result) => {
				  if (result.value) {
					//"확인" 버튼을 눌렀을 때 작업할 내용
				  }
				})	
	    }
	    
	    var delMsg = "${delMsg}"
	    if(delMsg != ""){
			  Swal.fire({
				  title: '상품삭제 성공!',
				  icon: 'success',
				  showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
				  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				  confirmButtonText: '확인', // confirm 버튼 텍스트 지정
				}).then((result) => {
				  if (result.value) {
					//"확인" 버튼을 눌렀을 때 작업할 내용
				  }
				})	
	    }
		
	});
	function goUdtPage(prodNum){
		  Swal.fire({
			  title: '상품수정 페이지로\n 이동하시겠습니까?',
			  icon: 'question',
			  showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			  cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
			  confirmButtonText: '확인', // confirm 버튼 텍스트 지정
			  cancelButtonText: '취소' // cancel 버튼 텍스트 지정
			}).then((result) => {
			  if (result.value) {
				//"확인" 버튼을 눌렀을 때 작업할 내용
				  location.href = "${path}/updateProd.do?prodNum="+prodNum
			  }
			})	
		
	}
	function delProd(prodNum) {
		  Swal.fire({
			  title: '해당 상품을\n 삭제하시겠습니까?',
			  icon: 'warning',
			  showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			  cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
			  confirmButtonText: '확인', // confirm 버튼 텍스트 지정
			  cancelButtonText: '취소' // cancel 버튼 텍스트 지정
			}).then((result) => {
			  if (result.value) {
				//"확인" 버튼을 눌렀을 때 작업할 내용
				location.href="${path}/deleteProd.do?prodNum="+prodNum
			  }
			})	
	}
	function Detail(categoryNum, detailNum) {
		location.href="${path}/getProdListAdmin.do?categoryNum="+categoryNum+"&detailNum="+detailNum;
	}
	
	function goDetailPage(prodNum, categoryNum) {
		location.href="${path}/prodDetail.do?prodNum="+prodNum+"&categoryNum="+categoryNum;
	}

</script>
</html>