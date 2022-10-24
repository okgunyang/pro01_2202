<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String email = (String) session.getAttribute("email");
	String name = (String) session.getAttribute("name");
%>
<div class="hd_wrap">
    <a href="index.jsp" class="logo">
    	<img src="./img/logo_black.svg" alt="로고">
    </a>
    <nav class="tnb">
    <%    
         if(id!=null && id.equals("admin")){
	%>
		<div>
	        <a href="memList.jsp">회원 관리</a>
	        <a href="boardList.jsp">게시판 관리</a>
	        <a href="logout.jsp">로그아웃</a>
	        <a href="sitemap.jsp">사이트맵</a>
        </div>
	<%
        } else if(id!=null) {
	%>
		<div>
			<span class="name_print"><%=name %>님</span>
	        <a href="logout.jsp">로그아웃</a>
	        <a href="memInfo.jsp">회원정보</a>
	        <a href="sitemap.jsp">사이트맵</a>
        </div>
	<%
        } else {
	%>
		<div>
	        <a href="login.jsp">로그인</a>
	        <a href="term.jsp">회원가입</a>
	        <a href="sitemap.jsp">사이트맵</a>
        </div>
	<%
        }
	%>
    </nav>
    <nav class="gnb">
        <ul>
            <li class="item1">
                <a href="" class="dp1">회사소개</a>
                <ul class="sub">
                    <li><a href="company.jsp#page1">인사말</a></li>
                    <li><a href="company.jsp#page2">회사연혁</a></li>
                    <li><a href="company.jsp#page3">오시는길</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="" class="dp1">제품소개</a>
                <ul class="sub">
                    <li><a href="product.jsp#page1">LCD 디스플레이</a></li>
                    <li><a href="product.jsp#page2">건물 경관 연출</a></li>
                    <li><a href="product.jsp#page3">LED 광고</a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="" class="dp1">서비스</a>
                <ul class="sub">
                    <li><a href="service.jsp#page1">온라인 가이드</a></li>
                    <li><a href="service.jsp#page2">최초 설치 서비스</a></li>
                    <li><a href="service.jsp#page3">추가 부품 택배 서비스</a></li>
                    <li><a href="service.jsp#page4">이동 설치 서비스</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="" class="dp1">고객센터</a>
                <ul class="sub">
                    <li><a href="custom.jsp#page1">자주하는 질문</a></li>
                    <li><a href="custom.jsp#page2">질문 및 답변</a></li>
                    <li><a href="custom.jsp#page3">공지사항</a></li>
                    <li><a href="custom.jsp#page4">온라인 상담</a></li>
                </ul>
            </li>
            <li class="item5">
                <a href="" class="dp1">설치 사례</a>
                <ul class="sub">
                    <li><a href="install.jsp#page1">기업별</a></li>
                    <li><a href="install.jsp#page2">시설별</a></li>
                    <li><a href="install.jsp#page3">기기별</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>