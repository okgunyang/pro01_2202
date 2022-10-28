<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="header.css">
<title>질문 및 답변 상세보기</title>
<style>
/* header.css */
.hd { position:fixed; }

/* content */
.vs { clear:both; width: 100%; height:300px; overflow: hidden; }
.vs img { display:block; width: 100%; height:auto; }
.bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
.bread_fr { width: 1200px; margin: 0 auto; }
.page { clear:both; width: 100%; min-height:100vh;}
.page:after { content:""; display:block; clear:both; }
.page_wrap { width: 1200px; margin: 0 auto; }

.page_title { padding-top: 1em; text-align: center; }
.home { color:#333; }

.frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
.tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
.tb tr { display:table-row; }
.tb td, .tb th { display:table-cell; }
.tb th { height: 48px; border-bottom:1px solid #fff; color:#fff; background-color:#333; 
   width:120px; }
.tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
   padding-left:80px; border-right:2px solid #333; }
.tb tr:first-child th { border-top:2px solid #333; }
.tb tr:first-child td { border-top:2px solid #333; }
.tb tr:last-child th { border-bottom:2px solid #333; }
.tb tr:last-child td { border-bottom:2px solid #333; }
.btn_group { clear:both; width:680px; margin:20px auto; }
.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
.btn_group .btn.primary { background-color:#333; color:#fff; }
.btn_group .btn.primary:hover { background-color:deepskyblue; }
   </style>
<link rel="stylesheet" href="footer.css">
</head>
<body>
<%@ include file="connectionPool.conf" %>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/vs1.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">질문 및 답변 상세보기</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">질문 및 답변 상세보기</h2>
  				<div class="tb_fr">
  					<table class="tb">
<%
		sql = "select * from qnaa where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		String author = ""; 
		if(rs.next()){
%>
  						<tbody>  
  							<tr>
								<th>구분</th>
								<td>
								<%
								if(rs.getInt("lev")==0){
									out.println("<span>질문</span>");
								} else {
									out.println("<span>답변</span>");
								}
								%>
								</td>
							</tr>
  							<tr>
								<th>공개여부</th>
								<td>
								<%
								if(rs.getString("sec").equals("Y")){
									out.println("<span>비공개</span>");
								} else {
									out.println("<span>공개</span>");
								}
								%>
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%=rs.getString("title") %></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><%=rs.getString("content") %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=rs.getString("author") %></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=rs.getString("resdate") %></td>
							</tr>
						</tbody> 
					</table>
					<div class="btn_group">
						<a href="qnaList.jsp" class="btn primary">질문 및 답변 목록</a>
						<%
							if(sid.equals("admin")) {
								if(rs.getInt("lev")==0){
						%>
							<a href='replyWrite.jsp?parno=<%=no %>' class="btn primary">답변 하기</a>
							<a href='qnaModify.jsp?no=<%=no %>' class="btn primary">글 수정</a>
							<a href='qnaDel.jsp?parno=<%=no %>' class="btn primary">글 삭제</a>
						<%
								} else {
						%>
							<a href='replyModify.jsp?no=<%=no %>' class="btn primary">답글 수정</a>
							<a href='replyDel.jsp?no=<%=no %>' class="btn primary">답글 삭제</a>
						<%
								}
							} else if(sid.equals(rs.getString("author"))){
						%>
							<a href='qnaModify.jsp?no=<%=no %>' class="btn primary">글 수정</a>
							<a href='qnaDel.jsp?parno=<%=no %>' class="btn primary">글 삭제</a>
						<%		
							} else {
						%>
							<p style="clear:both">글 작성자가 아닙니다.</p>
						<%
							}
						%>
					</div>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
					<%
							}
					%>
<%@ include file="connectionClose.conf" %>
</body>
</html>