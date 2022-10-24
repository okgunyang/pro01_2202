<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ft_wrap">
    <div class="ft_logo"><img src="./img/logo_ft.svg" alt="하단로고"></div>
    <div class="mid_box">
        <nav class="fnb">
            <a href="member01.html" class="dpc">개인정보 처리 방침</a>
            <a href="member02.html" class="dpc">이용약관</a>
            <a href="member03.html">이메일무단수집거부</a>
        </nav>
        <p class="addr">
            WE DISPLAY | 대표이사 | 정호영 사업자등록번호:120-81-55297<br>
            서울시 영등포구 여의대로 128 LG 트윈타워 |admin@wedisplay.solutions<br>
            통신판매업신고번호: 제2022-서울영등포-1247호<br>
            당 사는 통신판매중개자이며, 통신 판매의 당사자가 아닙니다. 상품 및 거래에 관한 의무와 책임은 판매자에게 있습니다.  
        </p>
        <p class="copyright">COPYRIGHT ⓒ LG DISPLAY CO., LTD. ALL RIGHTS RESERVED.</p>
    </div>
    <div class="sel_box">
        <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
            <option value="">패밀리 사이트</option>
            <option value="https://www.lgdisplay.com/kr">LG Display</option>
            <option value="https://kr.oledspace.com">OLED SPACE</option>
        </select>
    </div>
    <script>
    function sel_link(sel){
        location.href = sel.value;
    }
    </script>
</div>