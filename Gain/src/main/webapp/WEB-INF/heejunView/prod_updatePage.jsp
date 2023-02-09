<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 손 안의 백화점, 가인</title>
<!-- 제이쿼리 CDN -->
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<link rel="stylesheet" href="/Gain/markup/reset.css"/>
<link rel="stylesheet" href="/Gain/heejun/insertPage.css"/>
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
                    <li><a href="/Gain/logout.do">로그아웃</a></li>
                </ul>
            </nav>
         </div>
         <h1 class="main_logo">
            <a href="/Gain/goAdminMain.do"><img src="/Gain/markup/img/GAIN_mainlogo.png" alt="가인 메인 로고"></a>
         </h1>
         <nav class="lnb">
            <ul>
                <li><a href="${path}/getProdListAdmin.do">전체 상품</a></li>
                <li><a href="${path}/getProdListAdmin.do?categoryNum=C1">의류</a></li>
                <li><a href="${path}/getProdListAdmin.do?categoryNum=C2">슈즈</a></li>
                <li><a href="${path}/getProdListAdmin.do?categoryNum=C3">가방</a></li>
                <li><a href="${path}/getProdListAdmin.do?categoryNum=C4">액세서리</a></li>
                <li><a href="${path}/getProdListAdmin.do?categoryNum=C5">액세서리</a></li>
                <li><a href="#">DEGINERS</a></li>
            </ul>
         </nav>
    </header>
	<section>
	<!-- 여기서부터 작업 -->
        <div class="main_wrapper">
        	<h2 class="insert_product">상 품 수 정</h2>
        	<div class="content">
        	<form enctype="multipart/form-data" method="post">
        		<input type="hidden" name="prodNum" value="${prod.prodNum}">
				<div class="first_line">
					<h3 class="product_pname">상품명</h3>
					<h3 class="product_price">판매가</h3>
				</div>
				<div class="second_line">
					<input type="text" name="prodName" placeholder="상품명 입력" value="${prod.prodName}">
					<input type="number" name="prodPrice" placeholder="판매가 입력" value="${prod.prodPrice}">
				</div>
				<div class="third_line">
					<h3 class="product_brand">브랜드</h3>
					<h3 class="product_category">카테고리</h3>
					<h3 class="product_subsection">세부항목</h3>
				</div>
				<div class="fourth_line">
					<select name="brandNum">
						<c:forEach var="brand" items="${brandCom}">
						<option value="${brand.brandNum}">${brand.brandName}</option>
						</c:forEach>
					</select>
					<input type="hidden" value="${prod.brandNum}" name="brandHidden">
					<select name="categoryNum">
						<c:forEach var="cg" items="${categoryCom}">
						<option value="${cg.categoryNum}">${cg.categoryName}</option>
						</c:forEach>
					</select>
					<input type="hidden" value="${prod.categoryNum}" name="categoryHidden">
					<select name="detailNum">
						<c:forEach var="detail" items="${detailCom}">
						<option value="${detail.detailNum}">${detail.detailName}</option>
						</c:forEach>
					</select>	
					<input type="hidden" value="${prod.detailNum}" name="detailHidden">			
				</div>
				<div class="fifth_line">
					<h3 class="product_img">상품 이미지</h3>
					<h3 class="product_content">상품 상세설명</h3>
				</div>
				<div class="sixth_line">
					<div class="block">
						<div class="img_block">
							<div class="upload-display">
								<div class="upload-thumb-wrap"><img src="/Gain/heejun/${prod.prodImg}" class="upload-thumb">
								</div>
							</div>
							<input value="${prod.prodImg}" name="prodImg" readonly="readonly" class="upload-name" style="width: 200px;">
							
			              	<label for="input_file">수 정</label> 
             				<input type="file" name="multipartfile" id="input_file" class="upload-hidden"> 
						</div>
					</div>
					<textarea name="prodInfo" rows="15" cols="70" placeholder="내용을 입력해주세요">${prod.prodInfo}</textarea>
				</div>
				<div class="submit_line">
					<button type="button" class="udtBtn">수 정</button>
				</div>
			</form>
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
$(document).ready(function(){
		$("[name=brandNum] option").each(function(idx, opt){
			if($(this).val() == $("[name=brandHidden]").val()){
				$(this).attr("selected", "selected");
			}
		})
		$("[name=categoryNum] option").each(function(idx, opt){
			if($(this).val() == $("[name=categoryHidden]").val()){
				$(this).attr("selected", "selected");
			}
		})
		$("[name=detailNum] option").each(function(idx, opt){
			if($(this).val() == $("[name=detailHidden]").val()){
				$(this).attr("selected", "selected");
			}
		})
	    $(".udtBtn").click(function(){
			  Swal.fire({
				  title: '수정하시겠습니까?',
				  icon: 'question',
				  showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
				  confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				  cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
				  confirmButtonText: '확인', // confirm 버튼 텍스트 지정
				  cancelButtonText: '취소' // cancel 버튼 텍스트 지정
				}).then((result) => {
				  if (result.value) {
					//"확인" 버튼을 눌렀을 때 작업할 내용
					  if($("[name=prodName]").val() == ""){
						  Swal.fire({
							  title: '상품명을 입력해주세요.',
							  icon: 'warning',
							  showCancelButton: false,
							  confirmButtonColor: '#3085d6',
							  confirmButtonText: '확인'
							}).then((result) => {
							  if (result.value) {
								  $("[name=prodName]").focus()
							      return;
							  }
						  })
					  }
					  else if($("[name=prodPrice]").val() == ""){
						  Swal.fire({
							  title: '판매가를 입력해주세요.',
							  icon: 'warning',
							  showCancelButton: false,
							  confirmButtonColor: '#3085d6',
							  confirmButtonText: '확인'
							}).then((result) => {
							  if (result.value) {
								  $("[name=prodPrice]").focus()
							      return;
							  }
						  })
					  }
					  else if($("[name=brandNum]").val() == ""){
						  Swal.fire({
							  title: '브랜드를 선택해주세요.',
							  icon: 'warning',
							  showCancelButton: false,
							  confirmButtonColor: '#3085d6',
							  confirmButtonText: '확인'
							}).then((result) => {
							  if (result.value) {
							      return;
							  }
						  })
					  }
					  else if($("[name=categoryNum]").val() == ""){
						  Swal.fire({
							  title: '카테고리를 선택해주세요.',
							  icon: 'warning',
							  showCancelButton: false,
							  confirmButtonColor: '#3085d6',
							  confirmButtonText: '확인'
							}).then((result) => {
							  if (result.value) {
							      return;
							  }
						  })
					  }
					  else if($("[name=detailNum]").val() == ""){
						  Swal.fire({
							  title: '세부항목을 선택해주세요.',
							  icon: 'warning',
							  showCancelButton: false,
							  confirmButtonColor: '#3085d6',
							  confirmButtonText: '확인'
							}).then((result) => {
							  if (result.value) {
							      return;
							  }
						  })
					  }
					  else if($("[name=prodInfo]").val() == ""){
						  Swal.fire({
							  title: '상품 상세설명을 입력해주세요.',
							  icon: 'warning',
							  showCancelButton: false,
							  confirmButtonColor: '#3085d6',
							  confirmButtonText: '확인'
							}).then((result) => {
							  if (result.value) {
								  $("[name=prodInfo]").focus()
							      return;
							  }
						  })
					  }else{
						  $("form").submit();
					  }
				  }
				})	    	
	  	})
			
		

	
	
	   var fileTarget = $('.img_block .upload-hidden');

	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            // 파일명 추출
	            var filename = $(this)[0].files[0].name;
	        } 

	        else {
	            // Old IE 파일명 추출
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        };

	        $(this).siblings('.upload-name').val(filename);
	    });

	    //preview image 
	    var imgTarget = $('.img_block .upload-hidden');

	    imgTarget.on('change', function(){
	        var parent = $(this).parent();
	        parent.children('.upload-display').remove();

	        if(window.FileReader){
	            //image 파일만
	            if (!$(this)[0].files[0].type.match(/image\//)) return;
	            
	            var reader = new FileReader();
	            reader.onload = function(e){
	                var src = e.target.result;
	                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
	            }
	            reader.readAsDataURL($(this)[0].files[0]);
	        }

	        else {
	            $(this)[0].select();
	            $(this)[0].blur();
	            var imgSrc = document.selection.createRange().text;
	            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

	            var img = $(this).siblings('.upload-display').find('img');
	            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
	        }
	    });
	    
	    
	});

</script>
</html>