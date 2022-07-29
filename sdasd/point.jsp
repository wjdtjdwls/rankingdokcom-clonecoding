<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.sj.dto.*"%>
<%@page import="com.sj.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
<link rel="stylesheet" type="text/css"
	href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="js/jquery-3.6.0.min.js"></script>
<style>
body {
	font-family: 'Pretendard', sans-serif;
}

.header-inner {
	position: relative;
	max-width: 1100px;
	min-height: 120px;
	margin: 0 auto;
}

.body-inner {
	width: 1100px;
	margin: 0 auto;
}

.logo {
	display: block;
	position: absolute;
	top: 50px;
	left: 0;
	width: 180px;
	height: 46px;
	background: url(Images/logo.png);
}

a {
	background: transparent;
	text-decoration: none;
	color: inherit;
}

.blind {
	position: absolute;
	width: 1px;
	height: 1px;
	margin: -1px;
	padding: 0;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.logo>a {
	display: block;
	width: 100%;
	height: 100%;
}

.util {
	position: absolute;
	top: 10px;
	right: 0;
}

ul, ol {
	list-style: none;
}

.util>ul {
	overflow: hidden;
}

.util>ul>li {
	float: left;
	position: relative;
	padding: 0 12px 0 0;
	font-size: 13px;
	color: #4D4D4D;
}

.util>ul>.list:before {
	display: inline-block;
	content: '';
	width: 1px;
	height: 10px;
	vertical-align: middle;
	background: #E6E6E6;
	margin: -2px 11px 0 0;
}

.util>ul>li:last-child {
	padding-right: 0;
}

.header-search {
	position: absolute;
	top: 60px;
	left: 370px;
	text-align: center;
	z-index: 100;
}

.top-search.on {
	border: 1px solid #666;
}

.top-search {
	position: relative;
	display: inline-block;
	width: 380px;
	height: 38px;
	border: 1px solid #ddd;
	border-radius: 21px;
	background: #fafafa;
	padding: 0 45px 0 20px;
}

.top-search .input-search {
	width: 100%;
	height: 36px;
	border: 0;
	padding: 0;
	font-size: 15px;
	color: #555;
	text-align: left;
	background: transparent;
}

button {
	background: none;
	font-family: 'Pretendard', sans-serif;
	cursor: pointer;
	outline: none;
	border: 0;
	margin: 0;
	padding: 0;
}

.btn-top-search {
	position: absolute;
	top: 0;
	right: 10px;
	width: 35px;
	height: 35px;
}

.btn-top-search:after {
	display: inline-block;
	content: '';
	width: 18px;
	height: 18px;
	background: url(../ProjectImages/Main/ico_btns.png) 0 0;
	vertical-align: top;
}

.my-menu {
	position: absolute;
	top: 60px;
	right: 0;
}

.my-menu>ul {
	font-size: 0;
	padding-left: 0px;
	width: 195px;
}

.my-menu>ul>li {
	display: inline-block;
	vertical-align: top;
	margin-left: 38px;
}

.btn-util-coupon {
	display: inline-block;
	width: 26px;
	height: 38px;
	background: url(../ProjectImages/ico_util.png) left 40px;
}

.btn-util-mypage {
	display: inline-block;
	width: 24px;
	height: 38px;
	background: url(../ProjectImages/ico_util.png) left 7px;
}

.btn-util-cart {
	display: inline-block;
	margin-left: -6px;
	maegin-right: 11px;
	position: relative;
	width: 26px;
	height: 38px;
	background: url(../ProjectImages/ico_util.png) 27px 8px;
}

.count {
	display: block;
	position: absolute;
	top: 0;
	right: -11px;
	width: 18px;
	height: 18px;
	color: #fff;
	font-size: 11px;
	font-weight: bold;
	font-family: "Malgun Gothic";
	text-align: center;
	line-height: 1.6;
	background: #FF542A;
	border-radius: 50%;
}

.gnb-wrap {
	width: 100%;
	border-bottom: 1px solid #eee;
	background: #fff;
	z-index: 101;
}

.inner {
	position: relative;
	width: 1100px;
	height: 100%;
	margin: 0 auto;
}

.category-wrap {
	position: absolute;
	width: 186px;
	bottom: 0px;
	left: -20px;
}

.category-wrap .category-menu {
	position: absolute;
	top: 58px;
	left: 0;
	z-index: 1;
}

.category-menu .cate-dep1 {
	overflow-x: hidden;
	overflow-y: auto;
	background: #fff;
	border: 1px solid #ccc;
	border-top: 0;
	border-right: 0;
	padding-top: 6px;
}

.cate-dep1>li>a {
	display: block;
	padding: 4px 15px 4px;
}

.cate-dep1>li .ico-cate-gnb {
	vertical-align: middle;
	display: inline-block;
	width: 30px;
	text-align: center;
}

i>img {
	max-width: 100%;
	vertical-align: top;
}

.cate-dep1>li .menu {
	display: inline-block;
	vertical-align: middle;
	line-height: 2.1;
	margin-left: 4px;
	font-size: 14px;
}

.btn-menu-all {
	position: relative;
	display: block;
	width: 186px;
	color: #333;
	font-size: 17px;
	font-weight: 700;
	-webkit-transition: .1s;
	padding: 19px 0;
	line-height: 20px;
}

.btn-menu-all:before {
	display: inline-block;
	width: 14px;
	height: 12px;
	content: '';
	vertical-align: middle;
	background: url(../ProjectImages/ico_gnb_all.png) 0 0;
	margin: -3px 10px 0 20px;
}

.btn-menu-all:after {
	display: block;
	content: '';
	position: absolute;
	top: 21px;
	right: 0;
	width: 1px;
	height: 16px;
	background: #ccc;
}

.category-menu {
	position: absolute;
	top: 58px;
	left: 0;
	z-index: 1;
	width: 100%;
}

.cate-dep1 {
	display: none;
	overflow-y: auto;
	overflow-x: hidden;
	background: #fff;
	border: 1px solid #ccc;
	border-top: 0;
	border-right: 0;
	padding: 6px;
}

.cate-dep1>li {
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
}

.ico-cate-gnb {
	vertical-align: middle;
	display: inline-block;
	width: 30px;
	text-align: center;
}

.cate-dep1>li>a {
	display: block;
	padding: 4px 15px 4px;
}

.gnb-wrap .gnb {
	width: 100%;
	padding-left: 145px;
}

.gnb-wrap .gnb>ul {
	display: table;
	table-layout: auto;
	max-width: 100%;
}

.gnb-wrap .gnb>ul>li {
	display: table-cell;
	padding: 0 36px;
	word-break: keep-all;
}

.gnb>ul>li>a {
	display: block;
	color: #333;
	font-size: 17px;
	font-weight: 700;
	text-align: center;
	padding: 18px 0 18px;
	height: 100%;
	white-space: nowrap;
	line-height: 20px;
}

.ico-txt-gnb {
	display: inline-block;
	width: 90px;
	height: 17px;
	overflow: hidden;
	background: url(../ProjectImages/exe_delivery.png) center right
		no-repeat;
	background-size: cover;
	position: relative;
	top: 3px;
}

.body_inner {
	width: 1100px;
	margin: 0 auto;
}

html, body {
	height: 100%;
	color: #333;
	font-size: 14px;
	font-weight: 400;
	font-family: 'Pretendard', sans-serif;
	word-break: break-all;
	margin: 0, auto;
}

* {
	text-decoration: none;
	margin: 0px;
}

a {
	text-decoration: none;
	color: #404040;
}

input {
	padding: 3px 15px;
	border: 1px solid #ccc;
	margin-left: 10px;
}

li {
	list-style: none;
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
	margin-right: 42px;
}

#menu1 ul li a {
	display: block;
}

#menu1  a {
	width: 115px;
}

#menu1 ul li a:hover {
	background: white;
	color: blue;;
}

#menu1 img {
	margin-top: 5px;
}

.search {
	text-align: center;
}

#btnimages {
	display: inline-block;
	content: '';
	border: 0;
	width: 18px;
	height: 18px;
	background: url(rankingimages/ico_btns.png) 0 0;
	vertical-align: top;
}

#mypage-main {
	padding-left: 300px;
}

#mypage-main span {
	border-right: 1px solid black;
	padding-right: 10px;
}

#mypage-text #icon {
	display: inline-block;
	width: 56px;
	height: 60px;
	background: url(rankingimages/ico_cou_level.png) 0 0;
}

#mypage-text #membership {
	border: 2px solid #ddd;
	position: absolute;
	top: 70%;
	right: 38%;
	transform: translateY(-50%);
	font-size: 13px;
	padding: 5px 15px;
}

.all_area {
	position: relative;
	width: 1300px;
}

.container {
	position: relative;
	padding-bottom: 0px;
	height: 1192.85px;
}

.content_wrap {
	min-height: 700px;
	height: 1427.87px;
	margin-left: -40px;
}

.mypage_top_area {
	width: 100%;
    background: #F7F7F7;
}

.mypage_top {
	width: 1100px;
	margin: 0 auto;
	background: #F8F8F8;
	text-align: center;
	padding: 30px 0;
}

.contents {
	display: table;
	table-layout: auto;
	width: 100%;
}

.user_info {
	width: 590px;
	height: 80px;
	position: relative;
	padding: 25px;
	border: 0px solid #fff;
	background: #fff;
}

.img {
	padding: 8px;
	margin-right: 12px;
	display: inline-block;
	vertical-align: middle;
	margin-left: -230px;
	margin-top: 16px;
}

.ico_cou_level01 {
	background-position: 0 0;
}

[class*="ico_cou_level"] {
	display: inline-block;
	width: 60px;
	height: 62px;
	background: url(rankingimages/ico_cou_level.png) 0 0;
	position: absolute;
	top: 26%;
	left: 3%;
}

.text {
	display: inline-block;
	vertical-align: middle;
}

.welcome {
	font-size: 20px;
	font-weight: 400;
	padding-top: 0px;
}

.name {
	font-weight: 700;
}

strong {
	font-style: normal;
}

.rank_point {
	margin-top: 0px;
	overflow: hidden;
	margin-bottom: 0px;
}

ul li {
	list-style: none;
}

li {
	font-size: 14px;
	color: #666;
}

.rank_point li {
	float: left;
	margin-top: 10px;
}

ul {
	padding-inline-start: 0px;
}

.point:before {
	margin-top: -3px;
	height: 10px;
	background: #e6e6e6;
	margin: 2px 10px 0 0;
	display: inline-block;
	content: '';
	width: 1px;
	height: 10px;
	vertical-align: middle;
	margin-left: 10px;
}

.level_up_tip {
	float: left;
}

.membership_benefit {
	position: absolute;
	top: 49%;
	right: 35px;
	transform: translateY(-50%);
	border: 2px solid #ddd;
	border-radius: 20px;
	padding: 5px 15px;
}

.order {
	border: 0px solid #F8F8F8;
	background: #fff;
	width: 170px;
	height: 130px;
	display: table-cell;
	border-left: 4px solid #F8F8F8;
}

.mycoupon {
	border: 0px solid #F8F8F8;
	background: #fff;
	width: 170px;
	height: 130px;
	display: table-cell;
	border-left: 4px solid #F8F8F8;
}

.mypoint {
	border: 0px solid #F8F8F8;
	background: #fff;
	width: 170px;
	height: 130px;
	display: table-cell;
	border-left: 4px solid #F8F8F8;
}

.sidemenu {
	padding: 10px 24px;
	border: 1px solid #E6E6E6;
	width: 170px;
	margin-top: 10px;
	margin-bottom: 20px;
	margin-left: 0px;
}

.sidemenu span {
	font-size: 14px;
	color: #000;
	margin-top: 10px;
}

.sidemenu div {
	width: 170px;
	border-top: 1px solid #eee;
	padding: 15px 0;
}

.sidemenu p {
	margin-top: 10px;
}

.sidemenu a {
	color: #666666;
	margin-top: 1px;
	display: block;
	margin-bottom: -14px;
}

#pwinsert {
	width: 820px;
	float: right;
	position: relative;
	margin-top: -70%;
}

#insert {
	padding: 0px;
	border-top: 2px solid #666;
	margin-top: 10px;
	text-align: center;
}

#inner {
	text-align: left;
	padding: 0;
}

#input {
	height: 42px;
	padding: 3px 15px;
	background-color: #fff;
	border: 1px solid #ccc;
	font-size: 13px;
	border-radius: 2px;
	width: 332px;
	margin-top: 10px;
	float: left;
}

#btn {
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

select {
	border: 1px solid #ccc;
}

#voice {
	width: 178.04px;
    border: 1px solid #ccc;
    position: relative;
    top: 0px;
    right: 0px;
    height: 18.02px;
    text-align: center;
    padding: 18px 20px;
}

#voiceimg {
	background-position: -120px -110px;
	width: 22px;
	height: 16px;
	display: inline-block;
	background-image: url(rankingimages/ico_bullet.png);
	position: relative;
	top: 10%;
	left: -21%;
}

#bottom_menu {
	background: #f2f2f2;
	width: 1100px;
	padding: 19px 0 20px;
	font-size: 12px;
	margin-top: 0px;
	border-top: 1px solid #ddd;
}

#bottom_menu #personer:after {
	display: none;
}

#familysite {
	border: 1px solid #f2f2f2;
	color: black;
	margin-left: 781px;
	font-size: 12px;
	color: black;
	display: none;
}

.div1 {
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
	margin-left: 175px;
	margin-top: -81px;
	list-style: none;
	font-size: 12px;
	color: #808080;
	width: 530px;
}

.ul2 {
	list-style: none;
	margin-left: 620px;
	font-size: 12px;
	margin-top: -118px;
	color: #808080;
	padding-left: 40px;
	width: 334px;
}

.ul2 a {
	font-size: 11px;
}

#endbottom {
	margin-top: 70px;
	border-top: 1px solid #eee;
	width: 1100px;
	margin: 0 100px;
	padding: 14px 0 17px;
	margin-left: 0px;
}

#endbottom  li:after {
	display: inline-block;
	position: relative;
	top: 2px;
	right: 110px;
	content: '';
	width: 1px;
	height: 12px;
	background: #ccc;
	vertical-align: middle;
}

#endbottom li:last-child::after {
	content: none;
}

[class^="endbottom-"] {
	display: inline-block;
	vertical-align: top;
	height: 21px;
	background-image: url(rankingimages/ico_footer_service.png);
	margin-right: 8px;
	margin-top: -1px;
}

.endbottom-service01 {
	background-position: left top;
	width: 22px;
}

.endbottom-service02 {
	background-position: right top;
	width: 18px;
	margin-top: -2px;
}

.endbottom li {
	display: inline-block;
	padding: 0 20px;
	position: relative;
	color: #666;
	font-size: 13px;
	line-height: 20px;
}
/* 	#message{
			position:relative;
			width:80px;
			height:80px;
			background:url(rankingimages/ico_img.png);
			background-position: -280px 120px;
		} */
#plus:before {
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

#plus:after {
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

#message:before {
	display: block;
	content: '';
	width: 80px;
	height: 80px;
	background: url(rankingimages/ico_img.png) -280px -120px;
	margin: 0 auto 10px;
}
</style>

</head>
<body>
	<div class="body_inner">
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



		<div class="all_area" >
			<section id="contents_area" class="container">
				<div class="content_wrap">
					<div class="mypage_top_area">
						<div class="mypage_top">
							<div class="contents">
								<div class="user_info">
									<span class="img"> <i class="ico_cou_level01"></i>
									</span>
									<div class="text">
										<p class="welcome">
											<strong class="name"><%=nick %></strong> 님 반갑습니다.
										</p>
										<ul class="rank_point">
											<li><span style="padding: 0 10px 0 0;"><%=rating %></span></li>
											<li class="point">1% 적립</li>
										</ul>
										<p class="level_up_tip" id="level_up_text"
											style="color: #ff6001"><%=money %>원 더 구매 시, <%=nextrating %> 진급!</p>
									</div>
									<a href="https://www.rankingdak.com/mypage/memberBenefitsInfo"
										class="membership_benefit"> <span style="font-size: 13px;">멤버십
											혜택</span>
									</a>
								</div>
								<!-- user info -->

								<dl class="order">
									<dt style="position: relative; top: -14%;">주문/배송</dt>

									<dd style="position: relative; top: -14%;">
										<a href="https://www.rankingdak.com/mypage/orderlist"> <strong
											style="font-size: 28px;">0</strong> 건
										</a>
									</dd>
								</dl>
								<dl class="mycoupon">
									<dt style="position: relative; top: -14%;">쿠폰</dt>

									<dd style="position: relative; top: -14%;">
										<a href="https://www.rankingdak.com/mypage/myCoupon"> <strong
											style="font-size: 28px;">0</strong> 개
										</a>
									</dd>
								</dl>
								<dl class="mypoint">
									<dt style="position: relative; top: -14%;">포인트</dt>

									<dd style="position: relative; top: -14%;">
										<a href="https://www.rankingdak.com/mypage/myPoint"> <strong
											style="font-size: 28px; color: #FF6001;"><%=point %></strong> P
										</a>
									</dd>
								</dl>

							</div>
						</div>
						<!-- MYPAGE_TOP -->
					</div>
					<div class="my-container"
						style="width: 1100px; margin-top: 45px; margin-left: 106px; height: 958.92px;">
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
							<a href="point.jsp"style=color:#ff6001;font-weight:500;>포인트</a><br/>
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
					</div >
					<div id="voice">
						<i id="voiceimg"></i><span style=position:relative;top:0px;left:-30px;>고객의 소리</span>
					</div>
						<div
							style="position: relative; top: -734px; right: -296px; width: 820px; height: 560px;">
							<h3 style="font-size: 24px;">포인트</h3>
							<a style="float: right; margin-top: -27px;"><select
								name="choice"
								style="width: 120px; height: 35px; cursor: pointer; color: #999;">
									<option value="전체">전체내역</option>
									<option value="지급">지급내역</option>
									<option value="차감">차감내역</option>
							</select></a>
							<div id="insert" style="width: 820px;">
								<div id="inner">
									<table
										style="width: 820px; text-align: center; border-bottom: 1px solid #ddd; font-weight: 500; position: relative; top: -3px;">
										<tr>
											<th scope="col"
												style="width: 80px; height: 19.5px; padding: 16px 10px;">날짜</th>
											<th scope="col" style="width: 600px; height: 19.5px">내용</th>
											<th scope="col" style="width: 770px; height: 19.5px">지급/차감</th>
											<th scope="col" style="width: 560px; height: 19.5px">변동
												포인트</th>
											<th scope="col" style="width: 200px; height: 19.5px">보유
												포인트</th>
										</tr>
									</table>

									<div
										style="width: 820px; height: 429.5px; text-align: center; border-bottom: 1px solid #ddd;">
										<div id="no-data"
											style="width: 800px; height: 110px; padding: 160px 0px;">
											<i id="message" style="font-size: 15px; font-style: normal;">내역이
												없습니다.</i>
										</div>
										<div
											style="margin-top: 60px; height: 160px; background: #fafafa;">
											<div style="padding-top: 28px; margin-left: 15px;">
												<ul
													style="text-align: left; color: #888; font-size: 13px; line-height: 26px;">
													<li>※상품구매 적립 포인트는 구매확정 후 자동 지급됩니다.</li>
													<li>※적립일이 오래된 포인트부터 순차적으로 사용 처리됩니다.</li>
													<li>※지급일로부터 1년이 지난 포인트는 자동 소멸됩니다.</li>
													<li>※포인트 적립 및 사용에 대한 자세한 내역은 고객센터로 문의해주시기 바랍니다.</li>
												</ul>
											</div>
										</div>
									</div>

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
				</section>
			</div>
	</div>
</body>
</html>
