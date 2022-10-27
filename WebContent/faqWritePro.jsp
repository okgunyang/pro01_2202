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
	String title2 = "답변 : "+title;
	String content = request.getParameter("content");
	String content2 = request.getParameter("content2");
	String author = request.getParameter("author");
	int cnt1 = 0;
	int cnt2 = 0;
	int parno = 0;
	int prevno = 0;
%>
<!-- DB 생성 및 연결 -->
<%@ include file="connectionPool.conf" %>
<%
	//질문 글 등록
	sql = "insert into faqa values (fseq.nextval, ?, ?, ?, sysdate, 0, fseq.currval)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	cnt1 = pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	con = null; 
	pstmt = null;
	
	con = DriverManager.getConnection(url, dbid, dbpw);	
	sql = "select no from (select * from faqa order by rownum desc) where rownum=1";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	if(rs.next()){
			prevno = rs.getInt("no");
			System.out.println(prevno);
	}
	con.close();
	
	con = null; 
	pstmt = null;
	
	con = DriverManager.getConnection(url, dbid, dbpw);		
	sql = "insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, 1, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title2);
	pstmt.setString(2, content2);
	pstmt.setInt(3, prevno);
	cnt2 = pstmt.executeUpdate();
	//반환된 결과에 따라 분기
	if(cnt1>=1 && cnt2>=1){
		response.sendRedirect("faq.jsp");
	} else {
		response.sendRedirect("faqWrite.jsp");
	}
%>
<!-- DB 닫기 -->
<%@ include file="connectionClose2.conf" %>