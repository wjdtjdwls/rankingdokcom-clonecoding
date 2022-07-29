<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sj.dto.*"%>
<%@page import="com.sj.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="Images/favicon.ico">
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
			margin:0 auto;
			
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
			margin-left:10px;
		}
		li {
			list-style: none;
		}
		
		.upimg{
			width:1300px;
		}
		.upimg img{
			width:650px;
		}

		.header-inner {
			width: 1120px;
			height: 120px;
			margin-left:100px;
			border:1px solid white;
		}
		
		.header-inner .rankinglogo {
			diplay:block-inline;
			width: 180px;
			height: 46px;
			margin-top:37px;
		}
		.header-inner .rankinglogo img{
			margin-top:23px;
		}
		.header-inner .headermenu{
			float:right;
		}
		.header-inner .rankingicon{
			display:inline;
			width:222px;
			height:38px;
			text-align:center;
			margin-left:920px;
			margin-top:-43px;
			float:right;
			position: relative;
    		right: -22px;
			
		}
		.header-inner .rankingicon img{
			margin-left:20px;
		}
		#menu1 {
			width:1300px;
			background: white;
			text-align: center;
			height: 50px;
			margin-top: auto;
			margin-left: 72px;
			font-size:17px;
		}

		#menu ul {
			overflow: hidden;
			background: white;
			margin-right: 50%;
		}
		
		#menu1 ul li {
			width: 200px;
			float: left;
			width: 100px;
			height: 50px;
			line-height: 37px;
			text-align: center;
			margin-right:42px;
		}
		
		#menu1 ul li a {
			display: block;
		}
		#menu1  a {
			width:115px;
		}
		
		#menu1 ul li a:hover {
			background: white;
			color: blue;;
		}
		
		#menu1 img {
			margin-top: 5px;
		}
		#menu1 #all_cate:after{
			display: inline-block;
			content: '';
		    width: 1px;
		    height: 16px;
		    background: #ccc;
		    vertical-align: middle;
			margin-left:40px;
			margin-right:40px;
			position:relative;
    		top:-40px;
    		right:-99px;
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
			position: relative;
			width: 1300px;
		
		}		
		
		.container{
			position: relative;
			padding-bottom: 0px;
			height:1192.85px;
		}
		
		.content_wrap{
			min-height: 700px;
			height:1427.87px;
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
	    	position: relative;
	    	margin-top: -70%;
		}
		#insert{
			padding:0px;
			margin-top:10px;
			text-align:center;
		
		}
		#inner{
		    text-align:left;
		    padding: 0;
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
		
		
		
		#btn{
			margin-top: 41px;
    		text-align: center;
    		width: 180px;
   			 height: 48px;
    		border-radius: 2px;
    		background: #3A4C67;
    		color: white;
    		border: 1px solid #3A4C67;
    		font-size: 15px;
    		padding: 10px 25px 11px;
		}
	
		
		select{
			border:1px solid #ccc;
		
		}
		#voice{
			width: 178.04px;
		    border: 1px solid #e6e6e6;
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
		#familysite{
			border:1px solid #f2f2f2;
			color:black;
			margin-left:781px;
			font-size:12px;
			color:black;
			display:none;
		}		
		div1 {
			width: 1000px;
			
		}
		.img1 {
    		top: 35px;
    		left: 10%;
    		display: block;
    		width: 104px;
    		height: 42px;
    		margin-bottom: 30px;
		}
		
		.ul1 {
			margin-left: 127px;
		    margin-top: -81px;
		    list-style: none;
		    font-size: 12px;
		    color: #808080;
		    width: 530px;
		    position: relative;
		    top: 10px;
		    padding-left: 40px;
		}
		.ul1 li{
			font-size:12px;
		
		}
		.ul2 {
			list-style: none;
		    margin-left: 612px;
		    font-size: 12px;
		    margin-top: -118px;
		    color: #808080;
		    padding-left: 40px;
		    width: 334px;
		    position: relative;
		    top: 4px;
		}
		.ul2 a{
		font-size:11px;
		}
		.ul2 li{
			font-size:12px;
		
		}
		#endbottom{
			margin-top: 70px;
		    border-top: 1px solid #eee;
		    width: 1100px;
		    height: 20px;
		    padding: 14px 0 17px;
		    margin-top: 0px;
		    margin-left: 117px;
		}
		
		#endbottom  li:after{
			display: inline-block;
		    position: relative;
		    top: 0px;
		    right: 112px;
		    content: '';
		    width: 1px;
		    height: 11px;
		    background: #ccc;
		    vertical-align: middle;
		}
		#endbottom li:last-child::after{
			content:none;
		}
		
		[class^="endbottom-"]{
			display:inline-block;
			vertical-align:top;
			height:21px;
			background-image:url(rankingimages/ico_footer_service.png);
			margin-right:8px;
			margin-top:-1px;
		}
		.endbottom-service01{
			background-position:left top;
			width:22px;
			margin-left:202px;
		}
		.endbottom-service02{
			background-position:right top;
			width:18px;
			margin-top:-2px;
		}
		.endbottom li{
			display:inline-block;
			padding:0 20px;
			position:relative;
			color:#666;
			font-size:13px;
			line-height:20px;
			
		}
		#bottom_menu{
		background:#f2f2f2;
		width:1300px;
		padding:19px 0 20px;
		font-size:12px;
		margin-top:763px;
		border-top: 1px solid #ddd;
		}
		
		#bottom_menu span:after{
			display: inline-block;
			content: '';
		    width: 1px;
		    height: 11px;
		    background: #cccccc;
		    vertical-align: middle;
			margin-left:20px;
		}	
		
		#bottom_menu #personer:after{
			display:none;
		}
		
		#bottom_menu #famsite:after{
			display:none;
		}
		.headermenu span:after{
			display: inline-block;
			content: '';
		    width: 1px;
		    height: 11px;
		    background: #cccccc;
		    vertical-align: middle;
			margin-left:10px;
			margin-right:10px;
		}.headermenu span:last-child:after{
			content:none;
		}
		
		#list_search{
			width: 92px;
   			height: 34px;
    		background: url(rankingimages/btn_list_search.png);
    		background-position: center;
    		border: 0;
    		cursor:pointer;
    		display:block;
    		position:relative;
    		top:-49px;
    		left:585px;
    		
		}
		select{
			    max-width: 100%;
			    height: 34px;
			    padding: 4px 34px 4px 6px;
			    border: 1px solid #dcdcdc;
			    background: url(rankingimages/select_bg.png) no-repeat;
			    background-position: 100% center;
			    background-color: #fff;
			    color: #000;
			    font: inherit;
			    -webkit-appearance:none;
			    background-position:100% center;
		}
		
		#recent{
			padding:160px 0;
			border-top:1px solid #666;
			width:808px;
			text-align:center;
		}
		#chat{
			display: inline-block;
    		background-image: url(rankingimages/ico_bullet.png);
			background-position: -60px -110px;
		    width: 20px;
		    height: 20px;
		    vertical-align: text-bottom;
   		 	margin: -3px 6px 0 3px;
		}
		
		

		#chat_consulting li{
			font-size:14px;
			float:left;
			padding-left:10px;
			font-weight:500;
			line-height:24px;
			color:#333;
		}
		#chat_consulting li:before{
			display:inline-block;
			content:'';
			width:3px;
			height:3px;
			background:#333;
			margin:-3px 8px 0 -10px;
			boder-radius:50%;
			vertical-align:middle;
			}
		#chat_consulting span{
			font-size:16px;
		
		}
		#call{
			display: inline-block;
    		background-image: url(rankingimages/ico_bullet.png);
			background-position: -90px -110px;
		    width: 20px;
		    height: 20px;
		    vertical-align: text-bottom;
   		 	margin: -3px 6px 0 3px;
		}
		#call_consulting li{
			font-size:14px;
			float:left;
			padding-left:10px;
			font-weight:500;
			line-height:24px;
			color:#333;
			
		}
		#call_consulting li:before{
			display:inline-block;
			content:'';
			width:3px;
			height:3px;
			background:#333;
			margin:-3px 8px 0 -10px;
			boder-radius:50%;
			vertical-align:middle;
		}
		#call_consulting li:last-child:before{
			content:none;
		}
		
		#call_consulting span{
			font-size:16px;
		
		}
		[class^="right_arr-"]{
			width:12px;
			height:12px;
			position:relative;
			display:inline-block;
			
		
		}
		.right_arr:before{
			top:8px;
			left:90px;
			width:1px;
			height:6px;
			transform:rotate(135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		.right_arr:after{
			top:12px;
			left:90px;
			width:1px;
			height:6px;
			transform:rotate(-135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		
		#black_btn{
			border: 1px solid #333;
    		color: #fff;
    		background: #333;
   			padding: 5px 10px;
    		border-radius: 2px;
    		height: 32px;
		    box-sizing: border-box;
		    vertical-align: top;
		    text-align: center;
		    display: inline-block;
		    float: right;
		    position: relative;
		    top: -42px;
		    left: -13px;
		    cursor: pointer;
		
		}
		#see_all{
			display:block;
			position:relative;
			top:-16px;
			right:-310px;
			font-size:13px;
		}
		
		.seeall:after{
			top:399px;
			left:790px;
			width:1px;
			height:6px;
			transform:rotate(-135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		.seeall:before{
			top:395px;
			left:790px;
			width:1px;
			height:6px;
			transform:rotate(135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		
		.allsee:after{
			top:781px;
			left:795px;
			width:1px;
			height:6px;
			transform:rotate(-135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		.allsee:before{
			top:777px;
			left:795px;
			width:1px;
			height:6px;
			transform:rotate(135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		
		.alsee:before{
			top:777px;
			left:366px;
			width:1px;
			height:6px;
			transform:rotate(135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		.alsee:after{
			top:781px;
			left:366px;
			width:1px;
			height:6px;
			transform:rotate(-135deg);
			position:absolute;
			display:block;
			content:'';
			background-color:#000;
			box-shadow:inset 0 0 0 32px;
		}
		.alsee{
			display:block;
		    position:absolute;
		    top: -20px;
	    	left: -4px;
		}
		.allsee{
			display:block;
			position: absolute;
	    	top: -20px;
		}
		.seeall{
			display:block;
		    position: absolute;
    		top: -12px;
		}
	</style>

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
		String nick= mDao.nickget(new MemberChangeDto(id2));
		int Mrating=mDao.gradeget(new MemberDto(id2));
		String rating =mDao.grade(new MemberDto(Mrating));
		int nextMrating=Mrating+1;
		String nextrating =mDao.grade(new MemberDto(nextMrating));
		int amount =mDao.Amountget(new MemberDto(nextMrating));
		DecimalFormat df = new DecimalFormat("###,###");
		String money = df.format(amount);
		int point =mDao.pointget(new MemberDto(id2));
	%>
	<div class = "all_area"style=margin-bottom:-490px;>
		<section id = "contents_area" class = "container">
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
					<div class="my-container"style=width:1100px;margin-top:45px;margin-left:106px;height:958.92px;>
						<%@ include file="sidemenu.jsp" %>
					 <div style=position:relative;top:-696px;right:-280px;>
					<h3 style=font-size:18px;>최근 주문내역</h3> 
														
					<div id="insert"style=width:820px;margin-top:18px;>
						<div id="inner">
							<div id="recent">
								최근 3개월 내에 주문내역이 없습니다.
							</div>
							<h3 style=font-size:18px;>최근 본 상품</h3>
							<span id ="see_all"style=right:-732px;>전체보기</span><i class="seeall"></i>
							<div id="recent">
								최근 본 상품이 없습니다.
							</div>
							<div style="display:inline-block;margin:0px -25px;">
								<div id="divleft"style="float:left;padding:0px 25px;box-sizing:border-box;width:429px;">
								<h3 style=font-size:18px;>찜한 상품</h3>
								<span id="see_all">전체보기</span><i class="allsee"></i>
									<div style="padding:160px 0;border-top:1px solid #666;text-align:center;">
										찜한 상품이 없습니다.
									</div>
								</div>
								<div id="divright"style="float:right;padding:0 25px;box-sizing:border-box;width:429px;">
								<h3 style=font-size:18px;>상품후기</h3>
								<span id="see_all">전체보기</span><i class="alsee"></i>
									<div style="padding:160px 0;border-top:1px solid #666;text-align:center;">
										작성 가능한 후기가 없습니다.
									</div>
								</div>
							</div>
							<h3 style=font-size:18px;margin-bottom:18px;>1:1문의</h3>
							<a id="black_btn"style="border:1px solid #333;color:#fff;background:#333;"><span style=font-size:13px;>1:1 문의하기</span></a> 
														
						<div id="inner">
							<div id="recent">
								문의하신 사항이 없습니다.
							</div>
						</div>
						<div>
						<div id="chat_consulting"style="float:left;padding:20px;box-sizing:border-box;width:400px;background:#f8f8f8;">
							<h5><i id="chat"></i><span>실시간 채팅상담</span></h5>
							<ul style=margin-top:5px;>
							<li style=margin-right:25px;>평일 <span>09:00 ~ 21:00</span><br/>
							점심<span> 12:00 ~ 13:00</span></li>
							<li>토요일 <span>09:00 ~ 15:00</span><br/></li>
							<li>일요일<span> 09:00 ~ 21:00</span></li>
							</ul> 
						</div>
						<div id="call_consulting"style="float:right;padding:20px;;box-sizing:border-box;width:400px;background:#f8f8f8;height:115.67px;">
							<h5 style=position:relative;><i id="call"></i><span>전화상담</span><i class="right_arr"style="vertical-align:middle;margin:-3px 6px 0 3px;"></i><span style=color:#fb5001;font-size:18px;margin-left:10px;>02-6405-8808</span></h5>
							<ul style=margin-top:5px;>
							<li style=margin-right:25px;>평일 <span>09:00 ~ 21:00</span><br/>
							점심<span> 12:00 ~ 13:00</span></li>
							<li style=content:none;>주말, 휴일에는 실시간 <br/>채팅 상담을 이용해주세요.</li>
							</ul> 
						</div>
						</div>
					</div>
				</div>
			</div> <!-- contents wrap -->
			</div>
				<script>
					$(this).ready(function(){
						$("#bottom").load("BottomFrame.jsp");
					});
				</script>
				<div id="bottom"></div>
				</div>
		</section>
			</div>
			</div>
					
</body>
</html>