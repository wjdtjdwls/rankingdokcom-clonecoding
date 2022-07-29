<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="shortcut icon" href="Images/favicon.ico">
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
</head>
	<style>
		html, body {
			height: 100%;
			color: #333;
			font-size: 14px;
			font-weight: 400;
			/* line-height: 1.4; */
			font-family: 'Pretendard', sans-serif;
			word-break: break-all;
		}
		
		a {
			text-decoration: none;
			color: #404040;
		}
		input{
			padding:3px 15px;
			border: 1px solid #ccc;
		}
		li {
			list-style: none;
		}

		.search{
			text-align:center;
		}
		.login-message {
			width:500px;
			padding-top:60px;
			text-align: center;
			margin: 0 auto;
		}
		
		.login-container {
			width:1300px;
			background-color:#f7f7f7;
			margin:0 auto;
			}
		button, input {
		    overflow: visible;
		}
		.btn-primary {
		    width:394px;
		    height:52px;
		    background: #ff6001;
		    color: #fff;
		    border: 1px solid #ff6001;
		    margin-top: 10px;
		    margin-bottom:10px;
		    cursor:pointer;
		    
		}
		.btn-white{
			width:368px;
		    height:52px;
		    background: white;
		    color: black;
		    border: 1px solid #ccc;
		    margin-top: 10px;
		    margin-bottom:20px;
		    cursor:pointer;
		}
		login-message .snslogin {
			width:100%;
			height:50px;
			line-height:25px;
			vertical-align:middle;
			display:flex;
			justify-content: center;
			margin-top:30px;
			text-align:center;
		}
		
		 .snslogin img{
			text-align:center;
			width:46px;
			height:46px;
			margin-right:15px;
		}
		.benefit img{
			width:420px;
			height:263px;
			margin-top:40px;
			margin-bottom:80px;
		}
		.login-area{
			width:420px;
			margin:0,auto;
		}
		#id_plus_pw input{
			height:50px;
			margin-bottom:10px;
		}		
		#btnimages{
			display: inline-block;
    		content: '';
    		border:0;
    		width: 18px;
    		height: 18px;
    		background: url(rankingimages/ico_btns.png) 0 0;
    		vertical-align: top;
    		cursor: pointer;
		}
		#pwsearch:before{
			display: inline-block;
    		content: '';
		    width: 1px;
		    height: 8px;
		    background: #ccc;
		    vertical-align: middle;
		    margin: 0 8px 0 3px;
		}
		#naverlogo{
			display: inline-block;
    		width: 46px;
		    height: 46px;
		    overflow: hidden;
		    background: url(rankingimages/ico_sns_login_m.png) no-repeat;
		    background-size: auto 46px;
		    margin-right:20px;
		    cursor:pointer;
		}
		#applelogo{
			display: inline-block;
		    width: 46px;
		    height: 46px;
		    overflow: hidden;
		    background: url(rankingimages/ico_sns_login_m.png) no-repeat;
		    background-size: auto 46px;
		    background-position: right top;
		    margin-right:20px;
		    cursor:pointer;
		}
		#kakaologo{
			background: url(rankingimages/ico_sns_kakao_m.png) no-repeat 0 0;
			display: inline-block;
		    width: 46px;
		    height: 46px;
		    overflow: hidden;
		    cursor:pointer;
		    
		}		
	</style>
<body>
	<div style="width:1300px;margin:0 auto;">
			<div id=head_inner>
				<%@include file="MainFrame.jsp" %>
			</div>
	<div class="login-container">
		<div class="login-message">
					<p><strong ><span style=text-align:left;margin-right:209px;font-size:32px;>안녕하세요:)</span><br>
					<img src="rankingimages/rankingtext.png"style=margin-left:56px;> <span style=margin-right:222px;font-size:32px;>입니다.</span></strong></p>
					<div class="logintext">
						<form action="login_action.jsp">
							<div id="id_plus_pw">
								<input type ="text" name ="id" size ="50"placeholder="아이디" maxlength="50"style=outline:none;>
								<br>
								<input type ="PASSWORD" name ="pw" size ="50"placeholder="비밀번호" maxlength="50"style=outline:none;>
							</div>
							<div style="text-align:left;width:394px;display:inline-block;">
							<span style=line-height:22px;display:inline-block;><input type ="checkbox" name =f value= "A" checked style="width:22px;height:22px;accent-color:#ff6001;cursor:pointer;"><span style=vertical-align:super;>자동로그인</span></span>
							<span style=line-height:22px;display:inline-block;><input type ="checkbox" name =f value= "O" style=width:22px;height:22px;accent-color:#ff6001;border-radius:3px;cursor:pointer;><span style=vertical-align:super;>아이디저장</span></span>
							</div>
							<br>
							<button type ="submit"class="btn-primary"><span style=font-size:18px;>로그인</span></button><br/>
						</form>
						<a href="idsearch.jsp"><span>아이디찾기 </span></a>
						<a href="pwSearch.jsp"><span id="pwsearch">비밀번호찾기</span></a><br/>	
						<div style="margin:40px 0;">
						<p class="snslogin">
							<i id="naverlogo"></i>
							<i id="applelogo"></i>
							<i id="kakaologo"></i>
						</p>
						</div>
						<a href="Register.jsp"><button type ="submit"class="btn-white">간편회원가입</button><br/></a>
						<span style="opacity:0;">비회원주문조회</span><br/>
						<div class="benefit">
						<img src="rankingimages/benefit.png">
						</div>
					</div>				
				</div>
		</div>
		<script>
		$(this).ready(function(){
			$("#bottom").load('BottomFrame.jsp');
		});
		</script>
		<div id="bottom">
		</div>
	</div>
</body>
</html>