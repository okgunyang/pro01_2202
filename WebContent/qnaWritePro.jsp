<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	//캐릭터셋 설정
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	//보내온 데이터 받아오기
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");
	String sec = request.getParameter("sec");
	int lev = Integer.parseInt(request.getParameter("lev"));
	int cnt = 0;
%>
<!-- DB 생성 및 연결 -->
<%@ include file="connectionPool2.conf" %>
<%
	//질문 글 등록
	sql = "insert into qnaa values (qseq.nextval, ?, ?, ?, sysdate, 0, qseq.currval, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	pstmt.setString(4, sec);
	cnt = pstmt.executeUpdate();
	//반환된 결과에 따라 분기
	if(cnt>=1){
		response.sendRedirect("qnaList.jsp");
	} else {
		response.sendRedirect("qnaWrite.jsp");
	}
%>
<!-- DB 닫기 -->
<%@ include file="connectionClose2.conf" %>