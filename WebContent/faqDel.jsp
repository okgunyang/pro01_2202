<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	//캐릭터셋 설정
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	//보내온 데이터 받아오기
	int parno = Integer.parseInt(request.getParameter("no"));	
	int cnt = 0;
%>
<!-- DB 생성 및 연결 -->
<%@ include file="connectionPool2.conf" %>
<%
	//SQL 작성 및 실행
	sql = "delete from faqa where parno=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, parno);
	cnt = pstmt.executeUpdate();
	
	//반환된 결과에 따라 분기
	if(cnt>=1){
		response.sendRedirect("faq.jsp");
	} else {
		response.sendRedirect("faqDetail.jsp?no="+parno);
	}
%>
<!-- DB 닫기 -->
<%@ include file="connectionClose2.conf" %>