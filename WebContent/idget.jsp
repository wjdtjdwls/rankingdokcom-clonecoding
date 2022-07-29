<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sj.dao.*" %>
<%@page import="com.sj.dto.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="rankingimages/favicon.ico">
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<script src="js/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
<style>
		html, body {
			height: 100%;
			color: #333;
			font-size: 14px;
			font-weight: 400;
			/* line-height: 1.4; */
			font-family: 'Pretendard', sans-serif;
			word-break: break-all;
			margin:0;
	
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
		
		.idget-area{
			width:520px;
			margin:0 auto;
			padding:60px 100px 90px;
			margin-left:290px;
			margin-right:290px;
			margin-top:40px;
			background-color:white;
			
		}
		.idget-container {
			width:1300px;
			background-color:#f7f7f7;
			padding-top: 100px;
			padding-bottom:260px;
			
		}
		#img{
			display:inline-block;
			background-image:url(rankingimages/ico_img.png);
			background-position:-380px 0;
			width:62px;
			height:40px;
			position: relative;
    		top: 0px;
    		right: -217px;
    		margin-bottom: 25px;
		}
		.btn1{
			width:205px;
			padding:10px 25px 11px;
			height:50px;
			border: 1px solid #ff6001;
    		background: white;
    		border-radius:2px;
    		margin-right:2px;
		}
		.btn2{
			width:205px;
			padding:10px 25px 11px;
			height:50px;
			border: 1px solid #ff6001;
    		background: #ff6001;
			border-radius:2px;
			margin-left:2px;
		}
		
		
		#endimages img{
			border:1px solid #cccccc;
			
		}
		
		#btnimages{
			display: inline-block;
    		content: '';
    		border:0px solid #f2f2f2;
    		width: 18px;
    		height: 18px;
    		background: url(rankingimages/ico_btns.png) 0 0;
    		vertical-align: top;
    		cursor: pointer;
		}
	</style>
</head>
<body>
		<%
		String name=request.getParameter("name");
		String search=request.getParameter("search");
		MemberDao mDao =new MemberDao();
		if(search.equals("phone")){
			String p_number=request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
			String id = mDao.pidget(new pidgetDto(p_number,name));
			if(id==null){
				%>
				<script>
					alert("아이디가 없거나 핸드폰번호가 일치하지 않습니다.");
					location.href="idsearch.jsp";
				</script>
			<% 
			}
			%>
				<div style="width:1300px;margin:0 auto;">
					<script>
						$(this).ready(function(){
							$("#head_inner").load('MainFrame.jsp');
						});
					</script>
					<div id=head_inner>
					</div>
					<div class="idget-container">
						<div class="idget-area">
							<i id="img"></i>
							<div class="search">
								<div id="find"style=;font-size:20px;font-weight:500;margin-bottom:55px;>				
								<%=name %> 고객님의 아이디는<br/>
								<span style=color:#ff6001;><strong>[<%=id %>]</strong></span> 입니다.<br/>
								</div>
								<a href="pwSearch.jsp"><button class="btn1"style=color:#ff6001;>비밀번호 찾기</button></a>
								<a href="#"><button class="btn2"style=color:white;>확인</button></a>
							</div>
						</div>
					</div>
					<script>
						$(this).ready(function(){
							$("#bottom").load('BottomFrame.html');
						});
					</script>
					<div id="bottom">
					</div>
				</div>
		<% 
		}else{
			String email=request.getParameter("email")+"@"+request.getParameter("site");
			name=request.getParameter("name");
			String id = mDao.eidget(new eidgetDto(email,name));
			if(id==null){
				%>
				<script>
					alert("아이디가 없거나 핸드폰번호가 일치하지 않습니다.");
					location.href="idSearch.jsp";
				</script>
			<% 
			}
			%>
			<div style="width:1300px;margin:0 auto;">
					<script>
						$(this).ready(function(){
							$("#head_inner").load('MainFrame.html');
						});
					</script>
					<div id=head_inner>
					</div>
					<div class="idget-container">
						<div class="idget-area">
							<i id="img"></i>
							<div class="search">
								<div id="find"style=;font-size:20px;font-weight:500;margin-bottom:55px;>				
								<%=name %> 고객님의 아이디는<br/>
								<span style=color:#ff6001;><strong>[<%=id %>]</strong></span> 입니다.<br/>
								</div>
								<a href="pwSearch.jsp"><button class="btn1"style=color:#ff6001;cursor:pointer;>비밀번호 찾기</button></a>
								<a href="MainPage.jsp"><button class="btn2"style=color:white;cursor:pointer;>확인</button></a>
								
							</div>
						</div>
					</div>
					<script>
						$(this).ready(function(){
							$("#bottom").load('BottomFrame.html');
						});
					</script>
					<div id="bottom">
					</div>
				</div>
			<%
			}
			%>
		
	
</body>
</html>