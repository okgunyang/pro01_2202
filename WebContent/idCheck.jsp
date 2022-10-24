<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset2.css">
<style>
.frm { border:2px solid #333; padding: 24px; width:500px; margin:50px auto; }
.frm:after { content:""; display:block; clear:both; }
h2 { text-align:center; padding-top:40px; }
.in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; 
color:#f36; font-size:16px; text-indent:0.5em; display:block; float:left; }
.in_btn { display:block; background-color:#333; min-width:120px; height: 32px; 
line-height: 32px; border-radius:20px; float:left; margin-left:20px; margin-right:20px; cursor:pointer; }
.in_btn:hover { background-color: deepskyblue; }
</style>
<title>아이디 중복 확인</title>
</head>
<body>
<div class="fr">
	<h2>아이디 중복 검사</h2>
	<form action="idCheckPro.jsp" method="post" class="frm" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id="id" placeholder="8~12 문자 및 숫자 입력" class="in_dt" required autofocus>
		<input type="submit" class="in_btn" value="중복확인">
	</form>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<8 || id.length>12){
			alert("아이디의 글자수는 8글자 이상 12글자 이하 이어야 합니다.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>