<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");

String uid = (String) session.getAttribute("id");
if(uid==null){
	uid="guest";	
}

Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String dbid = "system";
String dbpw = "1234";
String sql = "";
int cnt = 0;
try {
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection(url, dbid, dbpw);
	//게시글 수 카운트
	sql = "select * from faqa order by parno asc, gubun asc";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" href="header.css">
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
.tb { display:table; margin:40px auto; width:1200px; border-collapse:collapse; }
.tb tr { display:table-row; }
.tb td, .tb th { display:table-cell; }
.tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
   color:#fff; background-color:#333; }
.tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
.tb tr th:first-child { width:80px; text-align:center; }
.tb tr th:nth-child(2) { width:820px; text-align:center; }
.tb tr th:nth-child(3) { width:160px; text-align:center; }
.tb tr th:last-child { text-align:center; }
.tb tr td:nth-child(2) { text-align:left; text-overflow:ellipsis; overflow:hidden;
white-space:nowrap; }
.tb tr td a { display:block; color:#333; padding-left:4px; padding-right:4px; 
width:810px; text-overflow:ellipsis; overflow:hidden;
white-space:nowrap; }
.tb tr td a:hover { text-decoration:underline; }
.tb_com { clar:both; width:100%; height:48px; }
strong.total { display:block; text-align:right; padding-top:60px; margin-bottom:-20px; float:right; }
strong.cur { display:block; text-align:left; padding-top:60px; margin-bottom:-20px; float:left; }
.btn_group { clear:both; width:1200px; margin:20px auto; }
.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
.btn_group .btn.primary { background-color:#333; color:#fff; }
.btn_group .btn.primary:hover { background-color:deepskyblue; }
</style>
<title>자주하는 질문 및 답변</title>
<link rel="stylesheet" href="footer.css">
</head>
<body>
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
                <span class="sel">자주하는 질문 및 답변</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">자주하는 질문 및 답변</h2>
  				<div class="tb_fr">
  					<table class="tb">
  						<thead>
  							<tr>
  								<th>연번</th>
  								<th>제목</th>
  								<th>작성자</th>
  								<th>작성일</th>
  							</tr>
  						</thead>
  						<tbody>         
<%
		while(rs.next()){
			cnt++;
			//작성일의 날짜 데이터를 특정 문자열 형식으로 변환
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td><%=cnt %></td>
					<td>
					<% if(rs.getInt("gubun")==0) { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a>
					<% } else { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:36px;"><%=rs.getString("title") %></a>
					<% } %>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
			</tr>
<%		
		}
	} catch(Exception e) {
		
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
						</tbody> 
					</table>
					<div class="btn_group">
						<% if(uid.equals("admin")) { %>
						<a href="faqWrite.jsp" class="btn primary">자주하는 질문 및 답변 등록</a>
						<% } %>
					</div>	
			</div>
		</div>
	</section>
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>