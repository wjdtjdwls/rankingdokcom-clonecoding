<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sj.dao.*"%>
<%@page import="com.sj.dto.*"%>
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
		*{
			text-decoration: none;
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
			
		}		
		
		.container{
			position: relative;
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
			background:#f9f9f9;
			padding:100px 0;
			border-top:1px solid #666;
			margin-top:10px;
			text-align:center;
		
		}
		#inner{
		    text-align:left;
		    padding: 0 175px;
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
		#voice{
			width: 178.04px;
		    border: 1px solid #ccc;
		    position: relative;
		    top:0px;
		    right: 0px;
		    height: 18.02px;
		    text-align: center;
		    padding: 18px 20px;
		   	margin-bottom:100px;
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
		<div class = "all_area">
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
										<p class = "level_up_tip" id ="level_up_text"style=color:#ff6001>
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
						<form action="infochange1.jsp">
						<div id="pwinsert">
						<h3 style=font-size:24px;>회원정보수정</h3>
						<div id="insert"style=width:820px;>
							<div id="inner">
								<h4 style=font-size:18px;margin:0;>비밀번호를 입력해주세요.</h4><br/>
								<p style=margin-top:-17px;text-align:left;>회원님의 개인정보 보호를 위해 비밀번호를 다시 한번 확인 합니다.<br/>
								비밀번호가 노출되지 않도록 주의해주세요.</p><br/>
								<input type="password" placeholder="비밀번호 입력" id="input">
								<button id="btn1">확인</button> 
							</div>
						</div>
						</div>
						</form>
					</div>
				</div> <!-- contents wrap -->
				</section>
					<script>
						$(function(){
							$("#btn1").click(function(){
								if("<%=pw%>"== $("#input").val()){
									return true;
								}else{
									alert("일치하지 않음");
									return false;
								}
							});	
						});
					</script>
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