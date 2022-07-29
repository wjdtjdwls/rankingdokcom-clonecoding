<%@page import="com.sj.dto.MemberDto"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.sj.dto.MemberChangeDto"%>
<%@page import="com.sj.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>랭킹닭컴</title>
	<link rel="shortcut icon" href="Images/favicon.ico">
	<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
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
		margin-bottom:258px;
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
		padding-left: 0px;	
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
	.ico_btn_choice {
		background-position: -150px -30px;
		width: 14px;
		height: 14px;	
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
	.menu_title_area .right [class^="btn_"] + [class^="btn_"] {
		margin-left: 15px;
	}
	
	
	.menu_title_area ~ .grid_list_wrap {
		margin-top: 10px;
	}
	.grid_list_wrap {
		border-top: 1px solid #666;
		padding: 20px 0 0;
		position: relative;
	}
	[class*="grid_area_"].gap33 {
		margin: 0 -17px 0 -16px;
	}
	[class*="grid_area_"] {
		position: relative;
		font-size: 0;
		text-align: left;
	}
	.grid_list_wrap [class*="grid_area_"].gap33 > .colum {
		/* margin-top: 60px; */
	}
	[class*="grid_area_"].gap33 > .colum {
		/* margin-top: 33px; */
		padding-left: 16px;
		/* padding-right: 17px; */
		margin-right: -20px;
	}
	.grid_area_span4 > .colum:nth-child(-n+4) {
		margin-top: 0 !important;
	}
	.grid_area_span4 > .colum {
		width: 25%;
	} 
	[class*="grid_area_"] > .colum {
		/* float: left; */
		display: inline-block;
		vertical-align: top;
		font-size: 14px;
	}
	
	.brand_list_item {
		position: relative;
	}
	.brand_list_item .img {
		position: relative;
		overflow: hidden;
		border-radius: 4px;
	}
	.brand_list_item .img.w180 {
		width: 180px;
		height: 180px;
	}
	.brand_list_item .txt_area {
		position: relative;
		width: 100%;
		height: 40px;
		max-height: 40px;
		margin-top: 10px;
	}
	.brand_list_item .txt_area .tit {
		color: #222;
		font-size: 14px;
		line-height: 23px;
		font-weight: 500;
	}
	.text_elps {
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		word-break: break-all;
	}
	.brand_list_item .txt_area .desc {
		color: #666;
		font-size: 14px;
		margin-top:5px;
	}
	.brand_list_item .txt_area .desc .ico_bl_heart2 {
		margin-right: 5px;
		margin-top:1px;
		vertical-align: top;
	}
	.ico_bl_heart2 {
		background-position: -30px -160px;
		width: 14px;
		height: 12px;
	}
	[class^="ico_bl_"] {
		display: inline-block;
		background-image: url(ProjectImages/Popular/ico_bullet.png);
	}
	.floating_lt {
		position: absolute;
		left: -1px;
		top: 0;
		z-index: 1;
	}
	.custom_checkbox {
		/* position: relative; */
		display: inline-block;
		vertical-align: top;
	}
	input[type="checkbox"] {
		box-sizing: border-box;
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
	.custom_checkbox .checkbox + label {
		min-height: 18px;
	}
	.custom_checkbox.single .checkbox + label {
		padding-left: 0;
		width: 20px;
		height: 20px;
		font-size: 0;
	}
	.custom_checkbox input[type="checkbox"] + label {
		display: inline-block;
		position: relative;
		cursor: pointer;
		vertical-align: top;
	}
	.custom_checkbox.single .checkbox + label:before {
		left: 50%;
		transform: translateX(-50%);
	}
	.custom_checkbox .checkbox + label:before {
		display: block;
		content: '';
		position: absolute;
		/* left: 0; */
		top: 0;
		width: 18px;
		height: 18px;
		text-align: center;
		background: #fff;
		border: 1px solid #ccc;
		box-sizing: border-box; 
	}
	/* 체크 시 */
	.custom_checkbox .ckeckbox:checked + label:before {
		background: #FF6001 url(ProjectImages/MyPage/ico_form.png)-50px -30px;
		width: 18px;
		height: 18px;
		border: 1px  solid #FF6001;
	}
	/* /////////////////////////////right//////////////////////////////////////////////// */
	
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
										<li><a href="beforeorder.jsp">이전주문내역<span class="sub">(22.04.24 이전)</span></a></li>
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
										<li><a href="MyPageLinked.jsp">찜한상품</a></li>
										<li><a style="color:#ff6001;font-weight:500;"href="MyPageBrand.jsp">관심브랜드</a></li>
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
							<h3 class="title_menu">관심브랜드</h3>
							<div class="right">
								<button type="button" class="btn_list_txt5 btnAllCheck">
									<i class="ico_btn_choice"></i>
									<span>전체선택</span>
								</button>
								<button type="button" class="btn_list_txt5 btnDelete">
									<i class="ico_btn_delete"></i>
									<span>전체삭제</span>
								</button>
							</div>
						</div>
						<div class="grid_list_wrap">
							<ul class="prd_item_list grid_area_span4 gap33">
								<!-- 상품이 있을 경우 -->
								<li class="colum">
									<div class="brand_list_item">
										<div class="img w180"><img src="ProjectImages/Brand1.png" /></div>
										<div class="txt_area">
											<strong class="tit text_elps">프로틴어스</strong>
											<p class="desc"><i class="ico_bl_heart2"></i>3 명이 좋아합니다.</p>
										</div>
										<div class="custom_checkbox single floating_lt">
											<input type="checkbox" id="check_1" class="checkbox" />
											<label for="check_1"></label>
										</div>
										<a href=""></a>
									</div>
								</li>
								<li class="colum">
									<div class="brand_list_item">
										<div class="img w180"><img src="ProjectImages/Brand1.png" /></div>
										<div class="txt_area">
											<strong class="tit text_elps">맛있닭</strong>
											<p class="desc"><i class="ico_bl_heart2"></i>34 명이 좋아합니다.</p>
										</div>
										<div class="custom_checkbox single floating_lt">
											<input type="checkbox" id="check_1" class="checkbox" data-gtm-form-interact-field-id="0"/>
											<label for="check_1"></label>
										</div>
										<a href=""></a>
									</div>
								</li>
							</ul>
						</div>
						<div class="pagination"></div>						
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