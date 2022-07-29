<%@page import="java.text.DecimalFormat"%>
<%@page import="com.sj.dto.*"%>
<%@page import="com.sj.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		    border: 1px solid #ccc;
		    position: relative;
		    top: 0px;
		    right: 0px;
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
		    margin-left: 200px;
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
		margin-top:0px;
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
	/* 	#message{
			position:relative;
			width:80px;
			height:80px;
			background:url(rankingimages/ico_img.png);
			background-position: -280px 120px;
		} */
		#plus:before{
			
            display: block;
		    content: '';
		    position: absolute;
		    border-right: 2px solid black;
		    border-bottom: 2px solid black;
		    width: 8px;
		    height: 8px;
		    right: 114px;
		    top: 2px;
		}
		#plus:after{
		    display: block;
		    content: '';
		    position: absolute;
		    border-top: 2px solid black;
		    border-left: 2px solid black;
		    width: 8px;
		    height: 8px;
		    top: 10px;
		    right: 106px;
		}
				
			
		#message:before{
			display:block;
			content:''; 
			width:80px;
			height:80px;
			background:url(rankingimages/ico_img.png) -280px -120px;
			margin:0 auto 10px;
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
			MemberDao mDao =new MemberDao();
			Object id1=session.getAttribute("id");
			String id2=(String)id1;
			String nick= mDao.nickget(new MemberChangeDto(id2));
			String pw=mDao.pwget(new MemberChangeDto(id2));
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
										<strong class = "name"><%=nick %></strong>
										님 반갑습니다.
									</p>
									<ul class = "rank_point">
										<li>
											<span style="padding: 0 10px 0 0;"><%=rating %></span>
										</li>
										<li class="point">
											1% 적립
										</li>
									</ul>
									<p class = "level_up_tip" id = "level_up_text"style=color:#ff6001>
										<%=money %>원 더 구매 시, <%=nextrating %> 진급!
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
					<div class="my-container"style=width:1100px;margin-top:45px;margin-left:106px;height:958.92px;position:relative;>
						<div class="sidemenu">
							<div style=border:none;>
							<a style=font-size:15px;font-weight:600;color:#333333;cursor:default;>주문관리</a><br/>
								<p>
									<a href="ordermanager.jsp">주문내역</a><br/>
									<a href="beforeorder.jsp">이전 주문내역<span style=font-size:12px;color:#666666;>(22.04.24 이전)</span></a><br/>
									<a href="cancelmanager.jsp" style=color:#ff6001;font-weight:500;>취소/반품 내역</a><br/>
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
							<a href="infochange2.jsp">정보수정</a><br/>
							</p>
							</div>
					</div>
					<div id="voice">
						<i id="voiceimg"></i><span style=position:relative;top:0px;left:0px;>고객의 소리</span>
					</div>
					 <div style=position:absolute;top:0px;right:0px;>
					<h3 style=font-size:24px;>취소/반품 내역</h3> 
					<input type="text" placeholder="주문 상품명 검색"style="float:right;position:absolute;top:0px;left:566px;height:30px;font:inherit;font-size:13px;border-radius:3px;width:200px">
					<button  id="btnimages" style=position:relative;cursor:pointer;top:-20px;right:-774px;></button>
					<div id="insert"style=width:820px;>
						<div id="inner">
							<div style ="width:820px;height:429.5px;padding:16px 10px;text-align:center;">			
								<div id="no-data"style="width:800px;height:24px;padding:160px 0px;">
							<p style=font-size:15px;color:#333>최근 1개월 내에 주문내역이 없습니다.</p>
								
								</div>
							</div>
			
					</div>
					
					</div>
				</div>
			</div> <!-- contents wrap -->
			</div>
					
					
					<script>
						$(this).ready(function(){
							$("#bottom").load('BottomFrame.jsp');
						});
					</script>
					<div id="bottom">
					</div>
		</section>
		</div>
	</div>
	
</body>
</html>