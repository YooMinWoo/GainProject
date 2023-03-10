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
<style type="text/css">
    @font-face {
        font-family: 'Pretendard-Regular';
        src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
        font-weight: 400;
        font-style: normal;
    }

    *{ padding: 0; margin: 0; box-sizing: border-box; }
    a{ text-decoration: none; color: #333; }
    li{ list-style: none; }
    img{ border: none; vertical-align: top; }
    body{ font-family: 'Pretendard-Regular'; }
    .clearfix::after{ content: ''; display: block; clear: both; }

    .gnb{
        width: 100%;
        height: 50px;
        background-color: #000;
        color: #fff;
        display: flex; 
        justify-content: space-between;
    }

    .gnb_left{
        width: 20%;
        text-align: center;
        line-height: 50px;
    }

    .gnb_center{
        width: 50%;
        text-align: center;
        line-height: 50px;
    }

    .gnb_right{
        width: 20%;
    }

    .gnb_right ul{
        display: flex;
        gap: 40px;
    }

    .gnb a{
        color: #fff;
        line-height: 50px;
    }

    .main_logo{
        width: 100%;
        height: 120px;
        text-align: center;
    }

    .main_logo img{
        padding-top: 34px;
    }

    .lnb ul{
        display: flex;
        font-size: 20px;
        gap: 40px;
        justify-content: center;
    }

    .lnb a{
        line-height: 25px;
        font-weight: 600;
    }

    .lnb a:hover{
        color: #ed3124;
    }

    header{
        border-bottom: 3px solid #000;
        padding-bottom: 15px;
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

    </section>
    <footer>

    </footer>
</body>
<script type="text/javascript">


</script>
</html>