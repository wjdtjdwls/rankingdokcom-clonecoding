<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sj.dao.*" %>
<%@page import="com.sj.dto.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="shortcut icon" href="rankingimages/favicon.ico">
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
		
		.pwsearch-area{
			width:720px;
			margin:0 auto;
			padding:70px 150px 90px;
			margin-left:290px;
			margin-right:290px;
			margin-top:40px;
			background-color:white;
			box-sizing:border-box;
		}
		.pwsearch-container {
			width:1300px;
			background-color:#f7f7f7;
			padding-top: 100px;
			padding-bottom:100px;
		}
		
		#name{
		    width: 420px;
		    height: 50px;
		    margin-top: 10px;
		    margin-bottom:0px;
		    border-radius:3px;
		    border-color:#ccc;
		    box-sizing:border-box;
		}
		#pw1{
		    width: 420px;
		    height: 50px;
		    margin-top: 10px;
		    margin-bottom:0px;
		    border-radius:3px;
		    border-color:#ccc;
		    box-sizing:border-box;
		}
		#pw2{
		    width: 420px;
		    height: 50px;
		    margin-top: 10px;
		    margin-bottom:0px;
		    border-radius:3px;
		    border-color:#ccc;
		    box-sizing:border-box;
		}
		
		.btn-ok_disabled{
			width:420px;
			text-align:center;
			height:50px;
			background-color:#cccccc;
			border:1px solid #cccccc;
			color:white;
    		margin-top: 24px;
    		box-sizing:border-box;
    		cursor:default;
		}
		.btn-ok{
			width:420px;
			text-align:center;
			height:50px;
			background-color:#ff6001;
			border:1px solid #ff6001;
			color:white;
    		margin-top: 24px;
    		box-sizing:border-box;
    		cursor:pointer;
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
	<script>
	$(function(){
		$("#find  input").on("input",function(){
			if($("#pw1").val() && $("#pw2").val()){
				$("#btn").addClass("btn-ok");
				$("#btn").attr("disabled",false);
			}else{
				$("#btn").removeClass("btn-ok");
				$("#btn").attr("disabled",true);
			}
		});
		
	});
	</script>
</head>
<body>
	<%
		MemberDao mDao =new MemberDao();
		String search=request.getParameter("search");
		if(search.equals("phone")){
			String ids=request.getParameter("id");
			String p_number=request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
			String name=request.getParameter("name");
			String id = mDao.pidget(new pidgetDto(p_number,name));
				if(!(ids.equals(id))||id==null){
	%>
					<script>
						alert("아이디가 없거나 핸드폰번호가 일치하지 않습니다.");
						location.href="pwSearch.jsp";
					</script>
					<%
						}
					%>
	<div style="width:1300px;margin:0 auto;">
		<div id=head_inner>
			<%@ include file="MainFrame.jsp" %>
		</div>
		<form action="pwChange_action.jsp">
	<div class="pwsearch-container">
		<div class="pwsearch-area">
			<h2 style=text-align:center;font-size:26px;margin-bottom:40px;>비밀번호 재설정</h2>
				<div class="search">
					<div id="find">				
						<input type="text" name="id"readonly id="name"value=<%=id %>><br/>
						<input type="password" name="pw1"id="pw1"placeholder="새 비밀번호 입력"style=margin-bottom:5px;><br/>
						<a style=float:left;font-size:13px;color:#FF490F;>비밀번호는 6 ~ 16자 제한입니다.</a>
						<input type="password" name="pw2"id="pw2"placeholder="새 비밀번호 확인"style=margin-top:5px;><br/>
						<p style=text-align:left;margin-top:5px;margin-bottom:25px;font-size:13px;><a style=color:#3A4C67;>※ 6 ~ 16자 영문, 숫자, 특수문자 1개 이상씩 혼용 필수.</a><br/>
						<a style=display:block;margin-top:5px;color:#999999;>※특수문자는 !,@,#,$,%,^,&,*만 사용 가능.</a></p><br/>
						<button id="btn"class ="btn-ok_disabled" >변경하기</button>
					</div>
				</div>
			</div>
		</div>
		</form>
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
			String ids=request.getParameter("id");
			String email=request.getParameter("email")+"@"+request.getParameter("site");
			String name=request.getParameter("name");
			String id = mDao.eidget(new eidgetDto(email,name));
			if(!(ids.equals(id))||id==null){
	%>
			<script>
				alert("아이디가 없거나 이메일이 일치하지 않습니다.");
				location.href="pwSearch.jsp";
			</script>
				<% 
				}
			%>
			<div style="width:1300px;margin:0 auto;">
			<div id=head_inner>
			<%@ include file="MainFrame.jsp" %>
			</div>
			<form action="pwChange_action.jsp">
		<div class="pwsearch-container">
			<div class="pwsearch-area">
				<h2 style=text-align:center;font-size:26px;margin-bottom:40px;>비밀번호 재설정</h2>
					<div class="search">
						<div id="find">				
							<input type="text" name="id" readonly id="name"value=<%=id %>><br/>
							<input type="password" name="pw1" id="pw1"placeholder="새 비밀번호 입력"style=margin-bottom:5px;><br/>
							<a style=float:left;font-size:13px;color:#FF490F;>비밀번호는 6 ~ 16자 제한입니다.</a>
							<input type="password" name="pw2" id="pw2"placeholder="새 비밀번호 확인"style=margin-top:5px;><br/>
							<p style=text-align:left;margin-top:5px;margin-bottom:25px;font-size:13px;><a style=color:#3A4C67;>※ 6 ~ 16자 영문, 숫자, 특수문자 1개 이상씩 혼용 필수.</a><br/>
							<a style=display:block;margin-top:5px;color:#999999;>※특수문자는 !,@,#,$,%,^,&,*만 사용 가능.</a></p><br/>
							<button id="btn"class ="btn-ok_disabled" >변경하기</button>
						</div>
					</div>
				</div>
			</div>
			</form>
			<script>
				$(this).ready(function(){
					$("#bottom").load('BottomFrame.jsp');
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