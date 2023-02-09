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

        .main_wrapper{
            padding-bottom: 50px;
        }

        .main_title{
            text-align: center;
            font-weight: 500;
            font-size: 32px;
            line-height: 38px;
            padding: 70px 0;
        }

        .coupon_box{
            display: flex;
            width: 550px;
            height: 250px;
            margin: auto;
            background: #FFFFFF;
            border: 1px solid #999999;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 10px;
            justify-content: space-between
        }

        .coupon_box_left{
            padding-top: 30px;
        }

        .coupon_box_left h2{
            font-weight: 400;
            font-size: 80px;
            line-height: 120px;
            padding-left: 25px;
        }

        .coupon_box_left h4{
            font-weight: 400;
            font-size: 24px;
            line-height: 29px;
            padding-left: 25px;
        }

        .coupon_box_left span{
            color: red;
        }

        .coupon_box_right{
            width: 143px;
        height: 250px;
        background: #333333;
        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        border-radius: 10px;
        position: relative;
        }

        .coupon_box_right h4{
            position: absolute;
            bottom: 53px;
            left: 27px;
            font-weight: 600;
            font-size: 24px;
            line-height: 29px;
            color: #fff;
        }
        
        .pro_img{
        	width: 100px;
        	height: 130px;
        	margin-left: 20px;
        }
        
        .pro_info{
        	display: flex;
        	gap: 30px;
        }
        
        .pro_price{
        	font-size: 30px;
		    text-align: center;
        }
        
        .pro_name{
        	font-size: 18px;
        	font-weight: 400;
        	line-height: 130px;
        }
        
        td{
        	border-bottom: 1px solid #777;
        	border-right: 1px solid #777;
        }
        
        th{
        	border-bottom: 1px solid #777;
        	border-top: 1px solid #777;
        	border-right: 1px solid #777;
        	font-weight: 400;
			font-size: 20px;
			line-height: 24px;
			padding: 15px 0;
        }
        
        td:last-child{
        	border-right: none;
        }
        
        th:last-child{
        	border-right: none;
        }
        
        table {
			width: 100%;
			border-spacing: 0;
			padding-bottom: 30px;
		}
		
		.delBtn{
			width: 300px;
    		height: 75px;
			background: #FFFFFF;
			border: 1px solid #777777;
			font-size: 23px;
			line-height: 24px;
			color: #777777;
			display: block; 
			margin: 20px auto 0;
			font-family: inherit;
		}
		
		.buyBtn{
			width: 300px;
    		height: 75px;
			background: #777777;
			font-weight: 500;
			font-size: 23px;
			line-height: 24px;
			color: #FFFFFF;
			display: block;
			border: none;
			margin: 20px auto 0;
			font-family: inherit;
		}
		
		input[type=number]{
			display: block;
		    font-family: inherit;
		    padding-left: 20px;
		    margin: auto;
		    width: 100px;
		    font-size: 28px;
		}
	
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
            <h2 class="main_title">나의 장바구니</h2>
            <form>
	            <table>
	            	<col width="5%">
	            	<col width="50%">
	            	<col width="20%">
	            	<col width="25%">
		            <thead>
		            	<tr>
		            		<th><input type="checkbox"></th><th>상품정보</th><th>수량</th><th>상품 금액</th>
		            	</tr>
		            </thead>
		            <tbody>
						<c:forEach var="product" items="${sbList}">
							<tr>
								<td style="text-align: center;"><input type="checkbox"></td>
								<td class="pro_info">
									<img class="pro_img" alt="${product.prodName } 이미지" src="/Gain/heejun/${product.prodImg }">
									<h3 class="pro_name">${product.prodName }</h3>							
								</td>
								<td>
									<input type="number" min="1" value="1">
								</td>
								<td>
								<h3 class="pro_price"><fmt:formatNumber value="${product.prodPrice }" pattern="#,###" />￦</h3>
								</td>
							</tr>
						</c:forEach>
		            </tbody>
	            </table>
            </form>
            <button class="delBtn">선택 상품 삭제하기</button>
            <button class="buyBtn">선택 상품 구매하기</button>
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