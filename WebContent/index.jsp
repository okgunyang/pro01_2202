<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
	<link rel="stylesheet" href="header.css">
    <style>
    /* header.css */
    /* content */
    .page { clear:both; width: 100%; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    #page1, #page3 { background-color:#ececec; }
    .page_tit { text-align: center; font-size:32px; padding-top:1.2em; padding-bottom: 0.8em; }
    .lst { clear:both; width: 1200px; }
    .lst:after { content:""; display:block; clear: both;}
    .lst li { margin-bottom: 40px; }
    .lst li.left { float:left; width: 816px; height: 459px; }
    .lst li.right { float:right; width:350px; height: 459px; }
    .ico_lst { clear:both; width: 100%; overflow:hidden; }
    .ico_lst li a { display:block; background-repeat: no-repeat; 
    background-position:0px center; background-size:auto 80%; 
padding-left: 55px; }
    .ico_lst li a.icon1 { background-image: url("./img/icon/ico_service_01.svg"); }
    .ico_lst li a.icon2 { background-image: url("./img/icon/ico_service_02.svg");}
    .ico_lst li a.icon3 { background-image: url("./img/icon/ico_service_03.svg"); }
    .cate_tit { color:#222; font-size:20px; padding-bottom: 0.5em; }
    .cate_com { color:#222; font-size:14px; overflow:hidden;
    white-space:nowrap; text-overflow:ellipsis; }

    #page2 { background-color: rgba(230, 248, 255, 0.5); }
    .pic_lst { clear:both; width: 100%; padding-bottom: 80px; }
    .pic_lst:after { content:""; display:block; clear:both; }
    .pic_lst li { float:left; position:relative; margin-bottom: 40px; }
    .pic_lst li a { display:block; width: 360px; margin-right: 40px;
    overflow: hidden; height: 300px; }
    .pic_lst li a img { display:block; width:600px; margin-left: -120px; transition-duration:0.8s; }
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; 
    text-shadow:0px 0px 3px red; }
    .pic_com { position:absolute; right:30px; bottom:30px; 
        text-shadow:0px 0px 3px blue; }

    #page3 { background-repeat: no-repeat; 
    background-size: cover; 
    background-position:center center; height: 100vh; background-image:url("./img/bg_partners.jpg"); overflow:hidden; }
    #page3 .page_wrap { width: 100%; }
    .circle_lst { clear:both; width: 4455px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff;
    float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst li a { display:block; width: 100%; height: 100%; }
    .circle_lst li a img { display:block; width:160px; height:auto; 
    position:absolute; top:50%; left: 20px; z-index:11; margin-top: -28px; }

    /* footer.css */
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
    $(document).ready(function(){
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=600){
                $(".hd").css("position","fixed");
            } else {
                $(".hd").css("position","absolute");
            }
        });
        $
        $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
        $lst1_obj = $(".circle_lst li").clone();
        $(".circle_lst.lst2").append($lst1_obj);
    });    
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <video src="./video/video1.mp4" autoplay muted class="vdo"></video>
        </figure>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">당신의 비즈니스에<br>Display가 필요한 순간,<br>WE DISPLAY</h2>
                <ul class="lst">
                    <li class="left">
                        <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/embed/FnEIQMUwALM" title="다양한 디스플레이 설치 사례" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </li>
                    <li class="right">
                        <ul class="ico_lst">
                            <li>
                                <a href="https://www.youtube.com/embed/FnEIQMUwALM" target="vdo2" class="icon1">
                                    <h3 class="cate_tit">다양한 디스플레이 설치 사례</h3>
                                    <p class="cate_com">나에게 맞는 디스플레이를
                                        찾아보세요. 나에게 맞는 디스플레이를
                                        찾아보세요. 나에게 맞는 디스플레이를
                                        찾아보세요.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/AQ8l96vxONo" target="vdo2" class="icon2">
                                    <h3 class="cate_tit">믿을만한 전문 파트너스</h3>
                                    <p class="cate_com">WE DISPLAY 공식
                                        파트너사들을 소개 합니다.</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/K-X7GNM0Vss" target="vdo2" class="icon3">
                                    <h3 class="cate_tit">쉽고 빠른 견적 문의</h3>
                                    <p class="cate_com">온라인으로 쉽고 빠르게
                                        견적을 받아보세요.</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page2">
            <div class="page_wrap">
                <h2 class="page_tit">공간의 가치를 높이는,<br>다양한 설치 사례</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_01.jpg" alt="예술의전당 불가리 컬러 전시회" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">예술의전당 불가리 컬러 전시회</h3>
                                <p class="pic_com">디스플레이앤라이프</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_02.jpg" alt="미디어월 LED 구축(TOWER2)" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">미디어월 LED 구축(TOWER2)</h3>
                                <p class="pic_com">에이번</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_03.png" alt="살롱헤리티지(세계유산 홍보관 )" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">살롱헤리티지(세계유산 홍보관 )</h3>
                                <p class="pic_com">에이번</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_04.jpg" alt="LED전광판 메뉴보드" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">LED전광판 메뉴보드</h3>
                                <p class="pic_com">키오스크코리아</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_05.jpg" alt="홍대 플래그쉽 스토어" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">홍대 플래그쉽 스토어</h3>
                                <p class="pic_com">디스플레이앤라이프</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_06.jpg" alt="호텔 로비 비디오월(속초)" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">호텔 로비 비디오월(속초)</h3>
                                <p class="pic_com">이로즈</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_07.jpg" alt="빛고을시민문화관 LED큐브 설치" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">빛고을시민문화관 LED큐브 설치</h3>
                                <p class="pic_com">아바비젼</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_08.jpg" alt="카운터 전용 사이니지 설치" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">카운터 전용 사이니지 설치</h3>
                                <p class="pic_com">라인어스</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/pic/thumbnail_09.jpg" alt="맞춤형 드라이브-스루" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">맞춤형 드라이브-스루(Drive-Thru)</h3>
                                <p class="pic_com">엘리비젼</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page3">
            <div class="page_wrap">
                <h2 class="page_tit">믿고 맡길 수 있는<br>WE DISPLAY<br>전문 파트너스</h2>
                <ul class="circle_lst lst1">
                    <li><a href=""><img src="./img/thumb/partner01.png" alt="파트너스01" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner02.png" alt="파트너스02" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner03.png" alt="파트너스03" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner04.png" alt="파트너스04" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner05.png" alt="파트너스05" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner06.png" alt="파트너스06" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner07.png" alt="파트너스07" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner08.png" alt="파트너스08" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner09.png" alt="파트너스09" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner10.png" alt="파트너스10" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner11.png" alt="파트너스11" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner12.png" alt="파트너스12" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner13.png" alt="파트너스13" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner14.png" alt="파트너스14" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner15.png" alt="파트너스15" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner16.png" alt="파트너스16" class="thumb"></a></li>
                    <li><a href=""><img src="./img/thumb/partner17.png" alt="파트너스17" class="thumb"></a></li>
                </ul>
            </div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>