<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	int amount = 0;
%>
<%@ include file="connectionPool.conf" %>
<%
	sql = "select FSEQ.currval from DUAL;";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	if(rs.next()){
		System.out.println("현재 시퀀스값 : "+rs);
	}
%>
<%@ include file="connectionClose.conf" %>
</body>
</html>