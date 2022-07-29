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
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
	<link rel="shortcut icon" href="rankingimages/favicon.ico">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
	<style>
	body {
		font-family: 'Pretendard', sans-serif;
	}
	ol, ul {
		list-style: none;
	    padding: 0;
	    border: 0;
	    vertical-align: baseline;
	}
	a {
		background: transparent;
		text-decoration: none;
		color: inherit;
	}
	img {
		max-width: 100%;
		vertical-align: top;
		border: 0;
	}
	* {
		    text-decoration: none;
   		margin: 0px;
	}
	.txt {
		word-break: break-all;
	}
	.button {
		background: none;
		cursor: pointer;
		outline: none;
		border: 0;
		margin:0;
		padding: 0;
	}
	button, [type="button"] {
		appearance: none;
		cursor: pointer;
		margin: 0;
		border: 0;
		padding: 0;
		background: none;
		background-image: none;
		font: inherit;
		color: inherit;
		box-sizing: border-box;
	}
	.container {
		position: relative;
		min-height: 700px;
		padding-bottom: 100px;
		margin-bottom: 258px;
	}
	.content_wrap {
		min-height: 700px;
	}
	.frame_full {
		position: relative;
		width:100%;
	}
	.head_maypage {
		background: #F7F7F7;
	}
	.user_info_box {
		width: 1100px;
		margin: 0 auto;
		/* background: #F8F8F8; */
		text-align: center;
		padding: 30px 0;
	}
	.user_info_box .inner {
		display: table;
		table-layout: auto;
		width: 100%;
		padding-left: 0;	
	} 
	.user_info_box .inner > .column.user_info {
		position: relative;
		padding: 25px;
	}
	.user_info_box .inner > .column {
		display: table-cell;
		vertical-align: middle;
		background: #fff;
		/* padding: 0 25px; */
		text-align: left;			
	}
	.user_info_box .user_info .img {
		display: inline-block;
		vertical-align: middle;
		margin-right: 12px;
		padding: 8px 0 7px;
	}
	[class*="ico_cou_level"] {
		display: inline-block;
		width: 60px;
		height: 62px;
		background: url(ProjectImages/MyPage/ico_cou_level.png);
	}
	.ico_cou_level02 {
		background-position: 0 -70px;	
	}	
	.user_info_box .user_info .txt {
		display: inline-block;
		vertical-align: middle;
	}
	.user_info_box .user_info .txt .greeting {
		font-size: 20px;
		font-weight: 400;
	}
	.user_info_box .user_info .txt .greeting > strong {
		font-weight: 700;
	}
	.sep_list {
		overflow: hidden;
	}
	.user_info_box .user_info .txt .greeting ~ .sep_list.type3 {
		margin-top: 10px;
	}
	.user_info_box .user_info .sep_list.type3 li {
		font-size: 14px;
	}
	.sep_list.type3 li {
		padding: 0 10px 0 0;
		font-size: 13px; 
		color: #666;
	}
	.sep_list li {
		float: left;
		position: relative;
		padding: 0 13px 0 0;
		color: #555; 
		font-size: 13px; 
	}
	.sep_list li:last-child {
		padding-right: 0;
	}
	.user_info_box .user_info .sep_list.type3 li:before {
		margin-top: -3px;
	}
	.sep_list.type3 li:before {
		height: 10px;
		background: #e6e6e6;
		margin: 2px 10px 0 0;
	}
	.sep_list li:before {
		display: inline-block;
		content:'';
		width: 1px;
		height: 10px;
		vertical-align: middle;
		background: #C4C4C4;
		margin: -1px -11px 0 0;
	}
	.user_info_box .user_info .txt .sep_list.type3 ~ .level_tip {
		margin-top: 3px;
	}
	.user_info_box .user_info .level_tip {
		color: #ff6001;
		font-size: 13px;
	}
	.user_info_box .user_info .btn_default_ex {
		position: absolute;
		top: 50%;
		right: 35px;
		transform: translateY(-50%);
		border: 2px solid #ddd;
	}
	.btn_default_ex {
		background: #fff;
		color:  #333;
		border: 1px solid #666;
	}
	[class*="btn_rud_"] {
		border-radius: 20px;
		display: inline-block;
		text-align: center;
		box-sizing: border-box;
		vertical-align: top;
	}
	[class*="btn_rud_"] > span {
		display: inline-block;
		vertical-align: top;
	}
	.btn_rud_sm {
		height: 36px;
		padding: 5px 15px;
	}
	user_info_box .user_info .btn_default_ex > span {
		line-height: 1.7;
	}
	.btn_rud_sm > span {
		font-size: 13px;
		line-height:1.8;
	}
	.user_info_box .inner > .column + .column {
		border-left: 4px solid #F8F8F8;
	}
	.user_info_box .inner > .column.order, 
	.user_info_box .inner > .column.coupon, 
	.user_info_box .inner > .column.point {
		width: 15.45%;
	} 
	.user_info_box .inner > .column {
		display: table-cell;
		vertical-align: middle;
		background: #fff;
		padding: 0 25px;
		text-align: left;
	}
	.user_info_box .column > dt {
		color: #666;
		font-size: 13px;
		margin-bottom: 10px;
	}
	.user_info_box .column > dd {
		color: #333;
		font-size: 22px;
		font-weight: 700;
		word-break: keep-all;
		max-width: 200px;
		display: block;
	}
	.user_info_box .column > dd .num {
		font-size: 28px;
	}
	.text_primary {
		color: #FF6001 !important;
	}
	/* /////////////////////////////frame_full head_mypage//////////////////////////////////////////// */
	.head_mypage ~ .frame_sm {
		margin-top: 45px;
	}
	.frame_sm {
		position: relative;
		max-width: 1100px;
		margin: 0 auto;
	}
	.frame_left {
		float: left;
	}
	.side_menu_wrap {
		width: 220px;
		height: 753px;	
	}
	.side_menu {
		padding: 10px 24px;
		border: 1px solid #E6E6E6;
		/* height: 676px; */
	}
	.side_menu .menu_list{
		padding: 0px;
	}
	.side_menu .menu_list > li {
		padding: 15px 0;
		border-top: 1px solid #eee;
	}
	.side_menu .menu_list > li:first-child {
		border-top: 0;
	}
	.side_menu .menu_list > li .menu {
		font-size: 15px;
		color: #000;
		font-weight: 500;
	}
	.side_menu .menu_list > li .depth2 {
		margin-top: 8px;
		padding: 0px;
	}
	.side_menu .menu_list > li .depth2 > li {
		font-size: 14px;
		color: #666;
	}
	.side_menu .menu_list > li .depth2 > li + li {
		margin-top: 8px;
	}
	.side_menu .menu_list > li .depth2 > li .sub {
		color: #999;
		font-size: 12px;
	}
	.side_link_box {
		border: 1px solid #E6E6E6;
		margin-top: 20px;
		padding: 18px 20px;
	}
	.side_link_box > a {
		display: block;
		position: relative;
		color: #000;
		font-size: 15px;
	}
	[class^="ico_bl_"] {
		display: inline-block;
		background-image:url(ProjectImages/Popular/ico_bullet.png);
	}
	.ico_bl_speaker {
		background-position: -120px -110px;
		width: 22px;
		height: 16px;
	}
	.side_link_box > a .ico_bl_speaker {
		vertical-align: middle;
		margin-top: -3px;
		margin-right: 8px;
	}
	.side_link_box > a .ico_arr_right {
		position: absolute;
		right: 0;
		top: 5px;
	}
	[class*="ico_arr_"] {
		position: relative;
		display: inline-block;
		width: 12px;
		height: 12px;
		-webkit-transition: .2s;
		-webkit-transform: translateX(0);
	}
	.side_link_box > a [class*="ico_arr_"]:after, .side_link_box > a [class*="ico_arr_"]:before {
		background: #666;
	}
	.ico_arr_right:before {
		top: 0;
		left: 50%;
		width: 1px;
		height: 59.45%;
		transform: rotate(135deg);
	}
	.ico_arr_right:after {
		bottom: 0;
		left: 50%;
		width: 1px;
		height: 59.45%;
		transform: rotate(-135deg);
	}
	[class*="ico_arr_"]:after, [class*="ico_arr_"]:before {
		position: absolute;
		display: block;
		content: '';
		box-shadow: insert 0 0 0 32px;
	}
	/* ////////////////////////////float_left//////////////////////////////////////////////// */		
	.frame_right {
		float: right;
	}
	.frame_cnt_inner {
		width: 820px;
		height: 488px;
	}
	.menu_title_area {
		position: relative;
		min-height: 30px;
	}
	.menu_title_area .title_menu {
		display: inline-block;
		font-size: 24px;
		font-weight: 500;
	}
	.menu_title_area .right {
		position: absolute;
		right: 0;
		top: 50%;
		/* transform: translateY(-50%); */
		-webkit-transform: translateY(-50%);
		z-index: 1;
	}
	.menu_title_area .right .btn_link_txt5 {
		vertical-align: middle;
		font-size: 14px;
	}
	.btn_link_txt5 {
		display: inline-block;
		/* vertical-align: top; */
		color: #666;
		/* font-size: 13px; */
	}
	.btn_link_txt5 i {
		vertical-align: middle;
		margin-top: -3px;
		margin-right: 5px;
	}
	.ico_btn_delete {
		background-position: -120px -30px;
		width: 14px;
		height: 14px;	
	}
	[class^="ico_btn_"] {
		display: inline-block;
		background-image: url(ProjectImages/MyPage/ico_btns.png);
	}
	button span {
		position: relative;
	}
	.menu_title_area ~ .grid_list_wrap {
		margin-top: 10px;
	}
	.frame_cnt_inner .grid_list_wrap.ui_compare_select {
		padding-bottom: 0;
	}
	.grid_list_wrap {
		border-top: 1px solid #666;
		padding: 20px 0 0;
		position: relative;
	}
	[class*="grid_area_"].gap33 {
		margin: 0 -17px 0 -16px
	}
	[class*="grid_area_"] {
		position: relative;
		font-size: 0;
		text-align: left;
	}
	/* .grid_area_span4 > .colum {
		width: 25%;
	} */
	.grid_area_span4 > .colum:nth-child(-n+4) {
		margin-top: 0 !important;
	}
	[class*="grid_area_"].gap33 > .colum {
		padding-left: 16px;
		padding-right: 17px;
	}
	[class*="grid_area_"] > .colum {
		/* float: left; */
		display: inline-block;
		vertical-align: top;
		font-size: 14px;
	}
	.prd_item, .desc_bottom {
		position: relative;
		width: 181px;
	}
	.prd_item .img {
		position: relative;
		overflow: hidden;
		border-radius: 4px;
		background: #f5f5f5;
	}
	.prd_item .img.w180 {
		width: 180px;
		height: 180px;
	}
	.prd_item .img + .desc_bottom {
		margin-top: 10px;
	}
	.prd_item .top {
		display: table;
		width: 100%;
		min-height: 20px;
		border-collapse: collapse;
	}
	
	.prd_item .imgbadge_dlv_exp, .prd_item .imgbadge_dlv_free {
		display: table-cell;
	}
	.imgbadge_dlv_exp {
		/* display: inline-block; */
		width: 64px;
		height: 20px;
		background: url(ProjectImages/Popular/txt_badge_dlv.png) no-repeat 0 0;
	}
	.prd_item .rating_simply {
		display: table-cell;
		vertical-align: middle;
		text-align: right;
	}
	.rating_simply {
		font-size: 0;
		position: relative;
	}
	.rating_simply:before {
		content: '';
		display: inline-block;
		width: 12px;
		height: 12px;
		background: url(ProjectImages/Popular/ico_bullet.png) no-repeat -90px -160px;
		position: relative;
		margin: 1px 2px 0 0;
		vertical-align: top;
	}
	.rating_simply .score {
		font-size: 13px;
		font-weight: 500;
	}
	.rating_simply .total_num {
		font-size: 13px;
		color: #999;
		padding-left: 2px;
	}
	.prd_item.type_sm .tit {
		line-height: 22px;
	}
	.prd_item .tit, .prd_item.type_md .tit {
		display: block;
		font-size: 15px;
		/* line-height: 22px; */
		margin: 8px 0 6px;
	}
	/* .prd_item.type_sm .tit a {
		height: 44px;
		max-height: 44px;
	} */
	.prd_item .tit a, .prd_item.type_md .tit a {
		max-height: 44px;
		height: 44px;
		word-break:break-all;
	}
	.prd_item .price {
		font-size: 13px;
		line-height: 1.2;
		vertical-align: top;
	}
	.prd_item .price > .num {
		font-size: 18px;
		font-weight: 700;
	}
	.prd_item .price ~ .text_guide_sm {
		color: #7389AA;
		margin-top: 6px;
	}
	.text_guide_sm {
		font-size: 12px;
		/* color: #666; */
		font-weight:normal;
	}
	.prd_item .bottom_badge_div {
		margin-top: 4px;
		font-size: 0;
	}
	/* [class*="grid_area_"]:after {
		display: block;
		content: '';
		clear: both;
	} */
	.prd_item .desc_bottom + .desc_form {
		margin-top: 15px;
	}
	.desc_form .btns_list {
		position: relative;
		padding-top: 15px;
		padding-left: 0px;
		border-top: 1px solid #eee;
		font-size: 0;
	}
	.desc_form .btns_list > li {
		display: inline-block;
		vertical-align: middle;
		line-height: 1;
		margin-right: 10px;
	}
	.btn_icon_cart2 {
		width: 20px;
		height: 18px;
		font-size: 0;
	}
	[class*="btn_icon_"] {
		display: inline-block;
	}
	.btn_icon_cart2:after {
		width: 100%;
		height:100%;
		background-position: 0 -60px;
	}
	[class*="btn_icon_"]:after {
		display: inline-block;
		content: '';
		background-image: url(ProjectImages/MyPage/ico_btns.png);
	}
	.custom_checkbox {
		position:relative;
		display: inline-block;
		vertical-align: top;
	}
	.custom_checkbox input[type="checkbox"] {
		position: absolute;
		width: 1px;
		height: 1px;
		padding: 0;
		margin: -1px;
		overflow: hidden;
		clip: rect(0,0,0,0);
		border: 0;
		vertical-align: top;
	}
	.custom_checkbox input[type="checkbox"] + label {
		display: inline-block;
		position: relative;
		cursor: pointer;
		vertical-align: top;
	}
	.custom_checkbox .checkbox_wish + label {
		width: 18px;
		height: 16px;
		line-height: 1;
	}
	.custom_checkbox .checkbox_wish:checked + label:before {
		background: url(ProjectImages/MyPage/ico_form.png) -50px -110px;
	}
	.custom_checkbox .checkbox_wish + label:before {
		display: block;
		content: '';
		position: absolute;
		left: 0;
		top: 0;
		width: 18px;
		height: 16px;
		/* background: url(ProjectImages/MyPage/ico_form.png) 0 -110px; */
	}
	.desc_form .btns_list > li:last-child {
		position: absolute;
		top: 50%;
		right: 0;
		margin: -5px 0 0;
	}
	.ui_compare_select button.ui_btn_compare {
		border: 1px solid rgba(58, 76, 103, 0.8);
		color: #3A4C67;
	}
	.btn_default_ex {
		background: #fff;
		/* color: #333; */
		/* border: 1px solid #666; */
	}
	[class*="btn_rud_"] {
		display: inline-block;
		text-align: center;
		box-sizing: border-box;
		vertical-align: top;
	}
	[class*="btn_rud_"] > span {
		display: inline-block;
		vertical-align: top;
	}
	.btn_rud_xs {
		height:28px;
		padding: 4px 10px;
		border-radius: 14px;
	}
	.btn_rud_xs > span {
		font-size: 12px;
		line-height: 1.6;
	}
	button span {
		position: relative;
	}	
	
	</style>
</head>
<body>
	<div class="container">
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
		<div class="content_wrap">
			<div class="frame_full head_mypage">
				<div class="user_info_box">
					<div class="inner">
						<div class="column user_info">
							<span class="img"><i class="ico_cou_level02"></i></span>
							<div class="txt">
								<p class="greeting"><strong><%=nick %></strong>님 반갑습니다.</p>
								<ul class="sep_list type3"><li><%=rating %></li><li class="groupPointRateText">1% 적립</li></ul>
								<p class="level_tip" id="levelUpText"><%=money %>원 더 구매 시, <%=nextrating %> 진급!</p>
							</div>
							<a href="" class="btn_rud_sm btn_default_ex"><span>멤버십 혜택</span></a>
						</div>
						<dl class="column order">
							<dt>주문/배송</dt>
							<dd><a href=""><strong class="num" id="orderCountText">0</strong>건</a></dd>
						</dl>
						<dl class="column order">
							<dt>쿠폰</dt>
							<dd><a href=""><strong class="num" id="couponCountText">0</strong>개</a></dd>
						</dl>
						<dl class="column order">
							<dt>포인트</dt>
							<dd class="text_primary"><a href=""><strong class="num" id="totalUnusedPointText"><%=point %></strong>P</a></dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="frame_sm">
				<div class="frame_left">
					<div class="side_menu_wrap">
						<nav class="side_menu">
							<ul class="menu_list">
								<li>
									<span class="menu">주문관리</span>
									<ul class="depth2">
										<li><a href="ordermanager.jsp">주문내역</a></li>
										<li><a href="beforeoder.jsp">이전주문내역<span class="sub">(22.04.24 이전)</span></a></li>
										<li><a href="cancelmanager.jsp">취소/반품 내역</a></li>
										<li><a href="restock.jsp">재입고 알림 상품</a></li>
									</ul>
								</li>
								<li>
									<span class="menu">혜택관리</span>
									<ul class="depth2">
										<li><a href="coupon.jsp">쿠폰</a></li>
										<li><a href="point.jsp">포인트</a></li>
									</ul>
								</li>
								<li>
									<span class="menu">활동관리</span>
									<ul class="depth2">
										<li><a href="MyPageRecent.jsp">최근 본 상품</a></li>
										<li><a style="color:#ff6001;font-weight:500;"href="MyPageLinked.jsp">찜한상품</a></li>
										<li><a href="MyPageBrand.jsp">관심브랜드</a></li>
										<li><a href="">1:1문의</a></li>
										<li><a href="">상품후기</a></li>
										<li><a href="">상품문의내역</a></li>
										<li><a href="">식단상담</a></li>
									</ul>
								</li>
								<li>
									<a href="" class="menu">오렌지멤버스</a>
								</li>
								<li>
									<span class="menu">회원정보관리</span>
									<ul class="depth2">
										<li><a href="deleverySet.jsp">배송지 관리</a></li>
										<li><a href="infochange2.jsp">정보수정</a></li>
									</ul>
								</li>
							</ul>
						</nav>
						<div class="side_link_box">
							<a href="">
								<i class="ico_bl_speaker"></i>
								<span>고객의 소리</span>
								<i class="ico_arr_right"></i>
							</a>
						</div>
					</div>
				</div>
				
				<div class="frame_right">
					<div class="frame_cnt_inner">
						<div class="menu_title_area">
							<h3 class="title_menu">찜한 상품</h3>
							<div class="right">
								<button type="button" class="btn_list_txt5">
									<i class="ico_btn_delete"></i>
									<span class="btnAllRemove">전체삭제</span>
								</button>
							</div>
						</div>
						<div class="grid_list_wrap ui_compare_select">
							<ul id="recentList" class="prd_item_list grid_area_span4 gap33 active">
								<!-- 상품이 있을 경우 -->
								<li class="ext_li colum">
									<div class="prd_item type_sm">
										<figure class="img w180"><a href=""><img src="ProjectImages/sample1.png" /></a></figure>
										<div class="desc_bottom">
											<div class="top"><em class="imgbadge_dlv_exp"></em>
												<div class="rating_simply">
													<span class="score">4.9</span>
													<span class="total_num">(3,314)</span>
												</div>
											</div>
											<p class="tit"><a href="">맛있닭 소프트 닭 안심살 혼합 100g</a></p>
											<span class="price"><strong class="num">18,900</strong>원 </span>
											<p class="text_guide_sm">(100g당 : 1,740원~1,890원)</p>
											<div class="bottom_badge_div"></div>
										</div>
										<div class="desc_form">
											<ul class="btns_list">
												<li><button type="button" class="btn_icon_cart2 btn_ext_cart"></button></li>
												<li>
													<div class="custom_checkbox">
														<input type="checkbox" id="check_0" class="checkbox_wish btn_ext_wish" checked/>
														<label for="check_0"></label>
													</div>
												</li>
												<li><button type="button" class="btn_rud_xs btn_default_ex ui_btn_compare btn_ext_compare"><span>비교담기</span></button></li>
											</ul>
										</div>
									</div>
								</li>
								<li class="ext_li colum">
									<div class="prd_item type_sm">
										<figure class="img w180"><a href=""><img src="ProjectImages/sample2.png" /></a></figure>
										<div class="desc_bottom">
											<div class="top"><em class="imgbadge_dlv_exp"></em>
												<div class="rating_simply">
													<span class="score">4.9</span>
													<span class="total_num">(1,310)</span>
												</div>
											</div>
											<p class="tit"><a href="">맛있닭 안심 스테이크 혼합 100g</a></p>
											<span class="price"><strong class="num">15,500</strong>원 </span>
											<p class="text_guide_sm">(100g당 : 1,150원~1,550원)</p>
											<div class="bottom_badge_div"></div>
										</div>
										<div class="desc_form">
											<ul class="btns_list">
												<li><button type="button" class="btn_icon_cart2 btn_ext_cart"></button></li>
												<li>
													<div class="custom_checkbox">
														<input type="checkbox" id="check_0" class="checkbox_wish btn_ext_wish" checked/>
														<label for="check_0"></label>
													</div>
												</li>
												<li><button type="button" class="btn_rud_xs btn_default_ex ui_btn_compare btn_ext_compare"><span>비교담기</span></button></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
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
</body>
</html>