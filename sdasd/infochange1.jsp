<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sj.dao.*"%>
<%@page import="com.sj.dto.*"%>
<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
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
		*{
			text-decoration: none;
			margin: 0px;
		}
		
		a {
			text-decoration: none;
			color: #404040;
		}
		input{
			padding:3px 15px;
			border: 1px solid #ccc;
			margin-left:18px;
		}
		li {
			list-style: none;
		}
		.search{
			text-align:center;
		}
		#btnimages{
			display: inline-block;
    		content: '';
    		border:0;
    		width: 18px;
    		height: 18px;
    		background: url(rankingimages/ico_btns.png) 0 0;
    		vertical-align: top;
		}
		#mypage-main{
			padding-left:300px;
		
		}
	 	#mypage-main span{
			border-right:1px solid black;
			padding-right:10px;
		}#mypage-text #icon{
			display: inline-block;
   			width: 56px;
   			height: 60px;
   			background: url(rankingimages/ico_cou_level.png) 0 0;
		}#mypage-text #membership{
			border:2px solid #ddd;
			position: absolute;
    		top: 70%;
   			right: 38%;
   			transform: translateY(-50%);
   			font-size: 13px;
   			padding: 5px 15px;
		}
		.all_area{
			width: 1300px;
			padding-bottom:510px;
			
		}		
		
		.container{
			padding-bottom: 0px;
		}
		
		.content_wrap{
			min-height: 700px;
		}
		
		.mypage_top_area{
			width: 100%;
			background: #F7F7F7;
		}
		
		.mypage_top{
			width: 1100px;
			margin : 0 auto;
			background: #F8F8F8;
			text-align: center;
			padding: 30px 0;
		}
		
		.contents{
			display: table;
			table-layout: auto;
			width: 100%;
		}
		
		.user_info{
			width : 590px;
			height : 80px;
			position: relative;
			padding: 25px;
			border : 0px solid #fff;
			background: #fff;
			
		}
		
		.img{
			padding : 8px;
			margin-right: 12px;
			display: inline-block;
			vertical-align: middle;
			margin-left : -230px;
			margin-top :16px;
		}
		
		.ico_cou_level01{
			background-position: 0 0;
		}
		
		[class*="ico_cou_level"]{
			display : inline-block;
			width : 60px; 
			height : 62px;
			background:url(rankingimages/ico_cou_level.png)0 0;
			position: absolute;
		    top: 26%;
		    left: 3%;
		}
		
		
		.text{
			display: inline-block;
			vertical-align: middle;
			
		}
		
		.welcome{
			font-size: 20px;
			font-weight : 400;
			padding-top: 0px;
		}
		
		.name{
			font-weight: 700;
			
		}
		
		strong{
			font-style:normal;
		}
		
		.rank_point{
			margin-top: 0px;
			overflow: hidden;
			margin-bottom : 0px;
		}
		
		ul li{
			list-style: none;
		}
		
		li{
			font-size : 14px;
			color : #666;
		}
		
		.rank_point li{
			float : left;
			margin-top : 10px;
		}
		
		ul {
			padding-inline-start: 0px;
		}
		
		.point:before{
			margin-top : -3px;
			height : 10px;
			background: #e6e6e6;
			margin: 2px 10px 0 0;
			display: inline-block;
			content : '';
			width : 1px;
			height : 10px;
			vertical-align: middle;
			margin-left: 10px;
		}
		
		.level_up_tip{
			float:left;
		}
		
		.membership_benefit{
			position: absolute;
			top:49%;
			right : 35px;
			transform : translateY(-50%);
			border : 2px solid #ddd;
			border-radius: 20px;
			padding : 5px 15px;
		}
		
		.order{
			border: 0px solid #F8F8F8;
			background: #fff;
			width:170px;
			height: 130px;
			display: table-cell;
			border-left: 4px solid #F8F8F8;
			
		}
		.mycoupon{
			border: 0px solid #F8F8F8;
			background: #fff;
			width:170px;
			height: 130px;
			display: table-cell;
			border-left: 4px solid #F8F8F8;
			
			
		}
		.mypoint{
			border: 0px solid #F8F8F8;
			background: #fff;
			width:170px;
			height: 130px;
			display: table-cell;
			border-left: 4px solid #F8F8F8;	
		}
		.sidemenu{
			padding: 10px 24px;
    		border: 1px solid #E6E6E6;
    		width: 170px;
    		margin-top:10px;
    		margin-bottom:20px;
		}
		.sidemenu span{
			font-size: 14px;
	    	color: #000;
	    	margin-top:10px;
	    	
	    }.sidemenu div{
	    	width:170px;
	    	border-top:1px solid #eee;
	    	padding:15px 0;
	    
	    }.sidemenu p {
	    	margin-top:10px;
	    }.sidemenu a{
	    	color:#666666;
	    	margin-top:1px;
	    	display:block;
	    	margin-bottom:-14px;
	    	cursor:pointer;
	    }
		
		#pwinsert{
			width: 820px;
	   		float: right;
	    	position: absolute;
	    	top:0;
	    	left:271px;
		}
		#insert{
			padding:40px 0px;
			border-top:1px solid #666;
			margin-top:10px;
			text-align:center;
		
		}
		#inner{
		    text-align: left;
		    padding: 0 100px;
		    margin-bottom: 190px;
		    width: 720px;
		    box-sizing: border-box;
		    margin:0 auto;
		}
		#input{
			height: 42px;
		    padding: 3px 15px;
		    background-color: #fff;
		    border: 1px solid #ccc;
		    font-size: 13px;
		    border-radius: 2px;
		    width:332px;
		    margin-top:10px;
		    float:left;
		}
		#btn1{
			width:100px;
			height:50px;
			padding:0 10px;
			font-size:15px;
			background: #ff6001;
		    border: 1px solid #ff6001;
		    color: white;
		    border-radius: 2px;
		    margin-top:10px;
			margin-left:5px;
		}
		.id{
			width:522px;
			
		}
		.pw{
			width:522px;
			
			margin-top:20px;
		}
		.name{
			width:522px;
			margin-top:20px;
			vertical-align:middle;
		}
		.nick{
			witdh:522px;
			margin-top:20px;
		}
		.phone{
			witdh:522px;
			margin-top:20px;			
		}

		.email{
			width:522px;
			margin-top:20px;
		}
		.birth{
			width:522px;
			height:50px;
			margin-top:20px;
		}

		.gender{
			width:522px;
			height:50px;
			margin-top:20px;
		}
		.lifetime{
			width:522px;
			margin-top:20px;
		}
		.accept{
			width:522px;
			margin-top:20px;
		}
		.recom-id{
			width:522px;
			margin-top:20px;
		}	
		.btn-primary{
		   	width:260px;
		    height:52px;
		    background: #ff6001;
		    color: #fff;
		    border: 1px solid #ff6001;
		    margin-top: 20px;
		    margin-bottom:20px;
		    font-size:15px;
		    margin-left:126px;
		}
		#idcheck{
			padding:10px;
			border:1px solid black;
			font-size:13px;
			border-color: #ccc;
    		color: #999;
   			background: white;
    		border-radius: 3px;
		}
		#email-select{
			width:112px;
			height:56px;
			padding:10px;
		}
		#year{
			width:135px;
			height:50px;
			padding:10px;
			margin-left:42px;
			box-sizing:border-box;
		}
		#month{
			width:135px;
			height:50px;
			padding:10px;
			box-sizing:border-box;
			margin-left:1px;
		}
		#day{
			width:135px;
			height:50px;
			padding:10px;
			box-sizing:border-box;
			margin-left:1px;
			}
		#cancelbtn{
			width: 255px;
		    height: 52px;
		    background: #ccc;
		    border: #ccc;
		    color: white;
		    font-size: 15px;
		    font-weight: 400;
		    padding: 10px 25px 11px;
		    margin-right: 2px;
		    margin-top:40px;
		}
		#changebtn{
			width: 255px;
		    height: 52px;
		    background: #FF6001;
		    border: #ff6001;
		    color: white;
		    font-size: 15px;
		    font-weight: 400;
		    padding: 10px 25px 11px;
		    margin-top:40px;
		}
		select{
			border:1px solid #ccc;
		
		}
		#voice{
			width: 178.04px;
		    border: 1px solid #ccc;
		    height: 18.02px;
		    text-align: center;
		    padding: 18px 20px;
		   
		}
		#voiceimg{
			background-position: -120px -110px;
    		width: 22px;
    		height: 16px;
			display: inline-block;
    		background-image: url(rankingimages/ico_bullet.png);
			position: relative;
    		top: 10%;
    		left: -21%;
		}
		.es2{
		    width: 4px;
		    height: 4px;
		    background: #FF6001;
		    display: inline-block;
		    border-radius: 50%;
		    margin-left: 4px;
    		vertical-align: text-top;
    		margin-top: 6px;
		}
		#hr1{
			margin-top: 10px;
		    padding-top: 10px;
		    border-top: 1px solid #ddd;
		    display: inline-block;
		    width: 416.98px;
		    height: 25.16px;
		    box-sizing: border-box;
		    margin-left: 105px;
		}
		#hr2{
			margin-top: 10px;
    		margin-bottom: 25px;
    		width: 416.98px;
		    height: 25.16px;
		    box-sizing: border-box;
		    margin-left: 105px;
		    display: inline-block;
		    padding-top: 10px;
			border-top: 1px solid #ddd;
		}
		#right-arr{
			 position:relative;
			 display:inline-block;
			 width: 12px;
    		height: 12px;
		}
		#right-arr:before{
			position: absolute;
		    display: block;
		    content: '';
		    background-color: #000;
		    box-shadow: inset 0 0 0 32px;
		    top: 0;
		    left: 50%;
		    width: 1px;
		    height: 59.45%;
		    -webkit-transform: rotate(135deg);
		}
		#right-arr:after{
			bottom: 0;
		    left: 50%;
		    width: 1px;
		    height: 59.45%;
		    -webkit-transform: rotate(-135deg);
		    transform: rotate(-135deg);
		    position: absolute;
		    display: block;
		    content: '';
		    background-color: #000;
		    box-shadow: inset 0 0 0 32px;
		}
		#phonecheck{
			background: url(rankingimages/ico_input_check.png) no-repeat;
    		background-position: right center;
    		background-size: 22px auto;
		}
		#pop1{
		    display: none;
		    position: fixed;
		    top: 0;
		    left: 0;
		    width: 100%;
		    height: 100%;
		    z-index: 10001;
		}
		#pop1:before{
			display: block;
		    content: '';
		    position: absolute;
		    top: 0;
		    left: 0;
		    width: 100%;
		    height: 100%;
		    background: rgba(0, 0, 0, 0.6);
		    z-index: 100;
		}
		#pop1-layer{
			width: 375px;
    		min-height: 246px;
    		position: absolute;
		    top: 50%;
		    left: 50%;
		    z-index: 100;
		    background-color: #fff;
		    -webkit-transform: translateY(-50%) translateX(-50%);
		    -webkit-backface-visibility: hidden;
		    text-align:center;
		}	
		#pop1-inner{
			height: 100%;
			position:relative;
		}
		#pop1-head{
			padding: 30px 30px 35px;
		}
		#close_button{
			position:absolute;
			top: 25px;
			right:25px;
			padding: 5px;
   			height: 26px;
   			cursor: pointer;
		}
		#pop1-content{
			padding:0 30px
		}
		#pop1-content .message{
			text-align: center;
		    font-size: 13px;
		    color: #666;
		    margin-bottom: 15px;
		}
		#select-box{
			display: inline-block;
		    position: relative;
		    height: 40px;
		    padding: 0 10px 0 15px;
		    border: 1px solid #ccc;
		    font-size: 14px;
		    color: #333;
		    box-sizing: border-box;
		    background: #fff;
		    width: 90px;
		}
		#middle-text{
    		padding: 0 5px 0 0;
			display: inline-block;
			vertical-align: middle;
		}
		.input-text{
			height: 40px;
		    /* height: 40px; */
		    padding: 3px 15px;
		    position: relative;
		    display: inline-block;
		    width: 90px;
		    z-index: 2;
		    background: #fff;
		    color: #333;
		    border: 1px solid #ccc;
		    box-sizing: border-box;
		    font-size: 13px;
		    border-radius: 0;
		    margin-left:0;
		}
		#receive{
			color: #fff;
		    background: #3a4c67;
		    border: 1px solid #3a4c67;
		    height: 44px;
    		padding: 8px 20px;
    		border-radius: 2px;
    		width:315px;
    		box-sizing:border-box;
    		margin-top:8px;
    		font-size:15px;
		}
		#x-btn{
			width: 16px;
    		height: 16px;
    		position: relative;
    		display: block;
		}
		#x-btn:before{
			position: absolute;
		    top: 50%;
		    left: -3px;
		    display: block;
		    content: '';
		    width: 130%;
		    height: 1px;
		    /* background: #666; */
		    box-shadow: inset 0 0 0 32px;
		    transform: rotate(45deg);
		
		}
		#x-btn:after{
			position: absolute;
		    top: 50%;
		    left: -3px;
		    display: block;
		    content: '';
		    width: 130%;
		    height: 1px;
		    /* background: #666; */
		    box-shadow: inset 0 0 0 32px;
    		transform: rotate(-45deg);
		}
		#member-remove{
			position: relative;
		    top: 350px;
		    right: 250px;
		}
	</style>
	<script>
		$(function(){
				$("#member-remove").click(function(){
					if(confirm("탈퇴하시겠습니까?")==true){
						return true;
					}else{
						return false;
					}
				});
			$("#phonecheck").click(function(){
				$("#pop1").show();
			});
			$("#close_button").click(function(){
				$("#pop1").hide();
				return false;
			});
			$("#receive").click(function(){
				alert("인증번호가 발송되었습니다!")
				$("#pop1").hide();
				return false;
			}); 
			$("#idcheck").click(function(){
				$("#nicknamecheck-ok").show();
				return false;
			});
		});
	</script>
</head>
<body>
	<div style="width:1300px;margin:0 auto;">
			<%
				boolean id=session.getAttribute("id")==null?false:true;
				if(id == false){
			%>
			<script>
				alert("로그인 후 이용가능합니다.");
				location.href="MainPage.jsp";
			</script>
			<% 
				}else{
			%>
				<div id=head_inner>
					<%@include file="MainFramesessionon.jsp"%>
				</div>
			<% 
				}
			%>
			<% 
			 	MemberDao mDao =new MemberDao();
				Object id1=session.getAttribute("id");
				String id2=(String)id1;
				String name = mDao.nameget(new MemberChangeDto(id2));
				String nick= mDao.nickget(new MemberChangeDto(id2));
				String phone= mDao.phoneget(new MemberChangeDto(id2));
				String [] arr1=phone.split("-");
				String p_number=arr1[0]+arr1[1]+arr1[2];
				String email= mDao.emailget(new MemberChangeDto(id2));
				String []arr2= email.split("@");
				String birth= mDao.birthget(new MemberChangeDto(id2));
				String []arr3=birth.split("-");
				String gender= mDao.genderget(new MemberChangeDto(id2));
				if(gender.equals("남")){
					gender="m";
				}else{
					gender="w";
				}
				String lifetime=mDao.lifetimeget(new MemberChangeDto(id2));
				if(lifetime.equals("동의")){
					lifetime="y";
				}else{
					lifetime="n";
				}
				String emailconsent=mDao.emailconsentget(new MemberChangeDto(id2));
				String smsconsent=mDao.smsconsentget(new MemberChangeDto(id2));
				String friend=mDao.friendget(new MemberChangeDto(id2)); 
				if(friend==null){
					friend="";
				}
				int Mrating=mDao.gradeget(new MemberDto(id2));
				String rating =mDao.grade(new MemberDto(Mrating));
				int nextMrating=Mrating+1;
				String nextrating =mDao.grade(new MemberDto(nextMrating));
				int amount =mDao.Amountget(new MemberDto(nextMrating));
				DecimalFormat df = new DecimalFormat("###,###");
				String money = df.format(amount);
				int point =mDao.pointget(new MemberDto(id2));
			%>
			<script>
				$(this).ready(function(){
					$("#email-select").val("<%=arr2[1] %>").prop("selected",true);
					$("#year").val("<%=arr3[0] %>").prop("selected",true);
					$("#month").val("<%=arr3[1] %>").prop("selected",true);
					$("#day").val("<%=arr3[2] %>").prop("selected",true);
					if("<%=gender%>" =="m")
						$("#m").prop("checked",true);
					else
						$("#w").prop("checked",true);
					if("<%=lifetime%>" == "y")
						$("#y").prop("checked",true);
					else
						$("#n").prop("checked",true);
					
					if("<%=emailconsent%>"=="동의")
						$("#emailconsent").prop("checked",true);
					else
						$("#emailconsent").prop("checked",false);
					
					if("<%=smsconsent%>"=="동의")
						$("#smsconsent").prop("checked",true);
					else
						$("#smsconsent").prop("checked",false);
					
				});
			</script>
			<div>
		<div class = "all_area">
			<section id = "contents_area" class ="container">
			<div class = "content_wrap">
				<div class= "mypage_top_area">
					<div class= "mypage_top">
						<div class= "contents">
							<div class= "user_info">
								<span class = "img">
								<i class="ico_cou_level01"></i>
								</span>
								<div class= "text">
									<p class ="welcome">
										<strong class = "name"><%=nick%></strong>
										님 반갑습니다.
									</p>
									<ul class = "rank_point">
										<li>
											<span style="padding: 0 10px 0 0;"><%=rating%></span>
										</li>
										<li class="point">
											1% 적립
										</li>
									</ul>
									<p class = "level_up_tip" id = "level_up_text"style=color:#ff6001>
										<%=money%>원 더 구매 시, <%=nextrating%> 진급!
									</p>
								</div>
								<a href = "https://www.rankingdak.com/mypage/memberBenefitsInfo" class = "membership_benefit">
									<span style="font-size : 13px;">멤버십 혜택</span>
								</a>
							</div><!-- user info -->
							
							<dl class = "order">
								<dt style=position:relative;top:-14%;>
									주문/배송
								</dt>
								
								<dd style=position:relative;top:-14%;>
									<a href = "https://www.rankingdak.com/mypage/orderlist">
										<strong style = "font-size:28px;">0</strong>
										건
									</a>
								</dd>
							</dl>
							<dl class = "mycoupon">
								<dt style=position:relative;top:-14%;>
									쿠폰
								</dt>
								
								<dd style=position:relative;top:-14%;>
									<a href = "https://www.rankingdak.com/mypage/myCoupon">
										<strong style = "font-size:28px;">0</strong>
										개
									</a>
								</dd>
							</dl>
							<dl class = "mypoint">
								<dt style=position:relative;top:-14%;>
									포인트
								</dt>
								
								<dd style=position:relative;top:-14%;>
									<a href = "https://www.rankingdak.com/mypage/myPoint">
										<strong style = "font-size:28px; color: #FF6001;"><%=point %></strong>
										P
									</a>
								</dd>
							</dl>
						</div>
					</div><!-- MYPAGE_TOP -->
					</div>
			<form action="Controller">
			<input type="hidden"name="command" value="infochange"/>
					<div class="my-container"style=width:1100px;margin-top:45px;margin-left:106px;position:relative;>
						<div class="sidemenu">
							<div style=border:none;>
							<a style=font-size:15px;font-weight:600;color:#333333;cursor:default;>주문관리</a><br/>
								<p>
									<a href="ordermanager.jsp">주문내역</a><br/>
									<a href="beforeorder.jsp">이전 주문내역<span style=font-size:12px;color:#666666;>(22.04.24 이전)</span></a><br/>
									<a href="cancelmanager.jsp">취소/반품 내역</a><br/>
									<a href="restock.jsp">재입고 알림 상품</a><br/>
								</p>
							</div>
							
							<div>
							<a style=font-size:15px;font-weight:600;color:#333333;cursor:default;>혜택관리</a><br/>
							<p>
							<a href="coupon.jsp"style=color:#666666;>쿠폰</a><br/>
							<a href="point.jsp"style=color:#666666;>포인트</a><br/>
							</p>
							</div>
							
							<div>
							<a style=font-size:15px;font-weight:600;color:#333333;cursor:default;>활동관리</a><br/>
								<p>
									<a href="MyPageRecent.jsp">최근 본 상품</a><br/>
									<a href="MyPageLinked.jsp">찜한 상품</a><br/>
									<a href="MyPageBrand.jsp">관심브랜드</a><br/>
									<a>1:1문의</a><br/>
									<a>상품후기</a><br/>
									<a>상품문의내역</a><br/>
									<a>식단상담</a><br/>
								</p>
							</div>
							<div>
							<a style=font-size:15px;font-weight:600;color:#333333;>VIP전용관</a><br/>
							</div>
							
							<div>
							<a style=font-size:15px;font-weight:600;color:#333333;>오렌지멤버스</a><br/>
							</div>
							
							<div>
							<a style=font-size:15px;font-weight:600;color:#333333;cursor:default;>회원정보관리</a><br/>
							<p>
							<a href="deleverySet.jsp">배송지 관리</a><br/>
							<a href="infochange2.jsp"style=color:#ff6001;font-weight:500;>정보수정</a><br/>
							</p>
							</div>
							</div>
							<div id="voice">
								<i id="voiceimg"></i><span style=position:relative;top:0px;left:-30px;>고객의 소리</span>
							</div>
						<div id="pwinsert">
							<h3 style=font-size:24px;font-weight:500;>회원정보수정</h3> 
							<div id="insert"style=width:820px;>
								<div id="inner">
									<div class="id">
										<span style= margin-right:35px;> 아이디  <i class="es2"></i></span>
										<input name="id"type="text" readonly value="<%=id2%>"style="width:416.98px;height:50px;border:none;padding:0 15px;outline:none;box-sizing:border-box;margin-left:16px;">
									</div>
									<div class="pw">
										<span style= margin-right:21px;>비밀번호  <i class="es2"></i></span>
										<input id="pw1" name="pw1"type="password" placeholder="6~16자 영문,숫자,특수문자 1개 이상씩 혼용 필수"style=width:416.98px;height:50px;box-sizing:border-box;><br/>
										<span class="pwcheck"> 
										<input id="pw2" name="pw2"type="password" placeholder="비밀번호 확인"style=width:416.98px;height:50px;margin-left:102.5px;margin-top:10px;box-sizing:border-box;></span>
										<div style=padding-left:103px;>
											<span style=color:#ccc;>※ 특수문자는 !,@,#,$,%,^,*만 사용가능.</span><br/>
											<span style=color:#ccc;>※ 6 ~ 16자 영문, 숫자, 특수문자 1개 이상씩 혼용 필수.</span>
										</div>
									</div>
									<div class="name">
										<span style= margin-right:49px;font-weight:normal;>이름  <i class="es2"></i></span>
										<input type="text" name="name"readonly value="<%=name%>"style="width:416.98px;height:50px;border:none;padding:0px;outline:none;box-sizing:border-box;margin-left:15px;padding: 0 15px;">
									</div>
									<div class="nick"> <span style=margin-right:35px;>닉네임  <i class="es2"></i> </span>
										<input readonly name="nick"type="text" value="<%=nick%>"style=width:344.06px;height:50px;box-sizing:border-box;outline:none;>
										<button  id="idcheck"style=float:right;height:50px;box-sizing:border-box;>확인완료</button>
										<div id="nicknamecheck-ok" style=display:none;margin-top:6px;><span style=font-size:13px;color:#3A4C67;margin-left:105px;>사용 가능한 닉네임입니다.</span></div>
									</div>
									<div class="phone"> 
									<span style= margin-right:21px;>휴대전화  <i class="es2"></i></span> 
										<input id="phonecheck" readonly name="p_number"type="text"value="<%=p_number %>"style=width:416.98px;height:50px;box-sizing:border-box;>
									</div>
									<div id="pop1"style=display:none;>
										<div id="pop1-layer">
											<div id="pop1-inner">
												<div id="pop1-head">
													<h4>휴대폰번호 가입인증</h4>
												</div>
												<div id="pop1-content">
													<p class="message">휴대폰 번호 입력 후 인증번호 받기 버튼을 클릭해 주세요.</p>
													<button id="close_button"><i id="x-btn"></i></button>
													<select id="select-box"name="phone1">
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="017">017</option>
													</select>
													<span id="middle-text">-</span>
													<input id="phone2"name="phone2"class="input-text"type="text" value="<%=arr1[1]%>">
													<span id="middle-text">-</span>
													<input id="phone3"name="phone3"class="input-text"type="text" value="<%=arr1[2]%>">
												</div>
											</div>
													<button id="receive">인증번호 받기</button>
										</div>
									</div>
									<script>
										$(function(){
											$("#pop1-content input").on("input",function(){
													if($("#phone2").val() && $("#phone3").val()){
														var p_number= $("select[name=phone1] option:selected").text()+$("#phone2").val()+$("#phone3").val();
														$("#phonecheck").val(p_number);
												}
											});
										});
									</script>
									<div class="email"><span style= margin-right:35px;>이메일  <i class="es2"></i></span>
										<input type="text" name="email"value="<%=arr2[0]%>" style=width:275.99px;height:50px;box-sizing:border-box;>
										<select id ="email-select"name="site"size="1"style=width:135px;height:50px;box-sizing:border-box;>
											<option value="1">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="chollian.net">chollian.net</option>
											<option value="empal.com">empal.com</option>
											<option value="freechal.com">freechal.com</option>
											<option value="htel.net">htel.net</option>
											<option value="hanmir.com">hanmir.com</option>
											<option value="hanafos.com">hanafos.com</option>
											<option value="korea.com">korea.com</option>
											<option value="lycos.co.kr">lycos.co.kr</option>
											<option value="nate.com">nate.com</option>
											<option value="netian.com">netian.com</option>
											<option value="paran.com8">paran.com</option>
											<option value="unitel.co.kr">unitel.co.kr</option>
										</select>
									</div>
									<div class="birth"> 생년월일  <i class="es2"></i> 
										<select id="year"name="year">
											<option value="1">년도선택 </option>
											<option value="2020">2020</option>
											<option value="2019">2019 </option>
											<option value="2018">2018 </option>
											<option value="2017">2017 </option>
											<option value="2016">2016 </option>
											<option value="2015">2015 </option>
											<option value="2014">2014 </option>
											<option value="2013">2013 </option>
											<option value="2012">2012 </option>
											<option value="2011">2011 </option>
											<option value="2010">2010 </option>
											<option value="2009">2009 </option>
											<option value="2008">2008 </option>
											<option value="2007">2007 </option>
											<option value="2006">2006 </option>
											<option value="2005">2005 </option>
											<option value="2004">2004 </option>
											<option value="2003">2003 </option>
											<option value="2002">2002 </option>
											<option value="2001">2001 </option>
											<option value="2000">2000 </option>
											<option value="1999">1999 </option>
											<option value="1998">1998 </option>
											<option value="1997">1997 </option>
											<option value="1996">1996 </option>
											<option value="1995">1995 </option>
											<option value="1994">1994 </option>
											<option value="1993">1993 </option>
											<option value="1992">1992 </option>
											<option value="1991">1991 </option>
											<option value="1990">1990 </option>
											<option value="1989">1989 </option>
											<option value="1988">1988 </option>
											<option value="1987">1987 </option>
											<option value="1986">1986 </option>
											<option value="1985">1985 </option>
											<option value="1984">1984 </option>
											<option value="1983">1983 </option>
											<option value="1982">1982 </option>
											<option value="1981">1981 </option>
											<option value="1979">1979 </option>
											<option value="1978">1978 </option>
											<option value="1977">1977 </option>
											<option value="1976">1976 </option>
											<option value="1975">1975 </option>
											<option value="1974">1974 </option>
											<option value="1973">1973 </option>
											<option value="1972">1972 </option>
											<option value="1971">1971 </option>
											<option value="1970">1970 </option>
											<option value="1969">1969 </option>
											<option value="1968">1968 </option>
											<option value="1967">1967 </option>
											<option value="1966">1966 </option>
											<option value="1965">1965 </option>
											<option value="1964">1964 </option>
											<option value="1963">1963 </option>
											<option value="1962">1962 </option>
											<option value="1961">1961 </option>
											<option value="1960">1960 </option>
										</select>
										<select id="month"name="month">
											<option value="1">월 선택</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
										<select id="day"name="day">
											<option value="1">일 선택</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select>
									</div>
									<div class="gender"> 
										<span style =margin-right:50px;>성별 <i class="es2"></i></span>
										<input type="radio" id="m"name="gender" value="남"style=accent-color:#ff6001;width:20px;height:20px;box-sizing:border-box;vertical-align:middle;>
										<span style =font-size:15px;vertical-align:middle;>남자</span>
										<input type="radio" id="w"name="gender"value="여"style=margin-left:30px;accent-color:#ff6001;width:20px;height:20px;box-sizing:border-box;vertical-align:middle;>
										<span style =font-size:15px;vertical-align:middle;>여자</span>
									</div>
									<div class="lifetime"><span style =margin-right:21px;> 평생회원  <i class="es2"></i></span>
										<input type="radio" id="y" name="lifetime-accept" value="o" style=accent-color:#ff6001;width:20px;height:20px;box-sizing:border-box;vertical-align:middle;margin-left:23px;>
										<span style =font-size:15px;>동의</span>
										<input type="radio" id="n" name="lifetime-accept" value="x" style=margin-left:30px;accent-color:#ff6001;width:20px;height:20px;box-sizing:border-box;vertical-align:middle;>
										<span style =font-size:15px;>동의안함</span>
										<div id="hr1">
											<span style=font-size:12px;color:#ccc;>※ 평생회원은 회원탈퇴 전까지  휴면회원으로 전환되지 않습니다.</span>
										</div>
									</div>
									<div class="accept"> 
										<span style=margin-right:10px;>서비스수신동의 </span>
										<div style=margin-left:97px;margin-top:-16px;position:relative;>
											<input type="checkbox" name="accept1"id="emailconsent" value="email_consent"style=accent-color:#ff6001;margin-left:14px;width:18px;height:18px;>
											<span style=margin-left:5px;position:absolute;top:1px;color:#666666;>이메일수신동의 </span>
											<span style=font-size:12px;color:#999999;position:absolute;margin-left:5px;top:3px;left:117px>(선택)</span><br/>
											<input type="checkbox" name="accept2"id="smsconsent"  value="sms_consent"style=accent-color:#ff6001;margin-left:14px;margin-top:10px;width:18px;height:18px;>
											<span style=position:absolute;margin-left:5px;top:32px;>SMS 수신동의</span>
											<span style=font-size:12px;color:#999999;position:absolute;margin-left:5px;top:33px;left:114px;>(선택)</span><br/>
										</div>
											<div id="hr2">
												<span style=font-size:12px;color:#ccc;>※ 회원정보 수정에서 언제든지 수신거부 하실 수 있습니다.</span><br/>
												<span style=font-size:12px;color:#ccc;>※ 상품 구매정보는 수신동의 여부 관계없이 받아 보실 수 있습니다. </span>
											</div>
									</div>	
										<div class="recom-id">
										<span style=margin-right:18px;>추천아이디 </span>
										<input type="text" readonly value="<%=friend %>" style="width:416.98px;height:50px;border:none;padding:0 15px;outline:none;box-sizing:border-box;margin-left:16px;"><br/>
											<button id="cancelbtn">취소하기</button>
											<button id ="changebtn">수정완료</button>
										</div>
										
											<script>
												$(function(){
													$("#cancelbtn").click(function(){
														alert("취소되었습니다.");
														location.href="Soon.jsp";
														return false;
													});
													$("#changebtn").click(function(){
														var pw1 = $(".pw #pw1").val();
														var pw2 = $(".pw #pw2").val();
														if(pw1 == pw2){
															return true;
														}else{
															alert("비밀번호가 일치하지 않습니다.");
															return false;
														}
													});
												});
											</script>
										</div>
									</div>
								</div>
							</div> <!-- contents wrap -->
							</form>
						</div>
				</section> 
						<form action="Controller">
							<input type="hidden" name="command" value="delete"/>
							<input type="hidden" name="id" value="<%=id2 %>"/>
							<div id="member-remove" style=margin-top:10px;cursor:pointer;width:85px;float:right;box-sizing:border-box;>
									<button><span style=color:#999999;>회원탈퇴하기</span><i id="right-arr"></i></button>
							</div>
						</form>
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