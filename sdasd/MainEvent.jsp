<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>랭킹닭컴</title>
	<link rel="shortcut icon" href="Images/favicon.ico">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script>
    function addBtnEvent() {
        $(".btn_event").on("click", function (event) {
            event.preventDefault();
            const status = $(this).attr("id");
            goList(status);
        });
        $(".win_clob").on("click", function (event) {
            event.preventDefault();
            document.location.href = "/promotion/win/list";
        });
        $(".event_view").on("click", function (event) {
            event.preventDefault();
            const eventCd = $(this).attr("id");
            const eventType = $(this).data("type");
            goView(eventCd, eventType);
        });
        $(".btn_search").on("click", function (event) {
            event.preventDefault();
            goSearch();
        });
    }	

    function goList(status) {
        const frm = $("#frm_event");
        $("input[name='status']").val(status);
        $("input[name='nowPageNo']").val('');
        $("input[name='keywordType']").val('');
        $("input[name='keyword']").val('');
        frm.attr("action", "/promotion/event/list");
        frm.submit();
    }

    function goView(eventCd, eventType) {
        const frm = $("#frm_event");
        $("input[name='eventCd']").val(eventCd);
        $("input[name='eventType']").val(eventType);
        $("input[name='nowPageNo']").val('');
        $("input[name='keywordType']").val('');
        $("input[name='keyword']").val('');
        frm.attr("action", "/promotion/event/view");
        frm.submit();
    }

    function goSearch() {
        const frm = $("#frm_event");
        $("input[name='nowPageNo']").val('');
        $("input[name='keywordType']").val($("#keywordType").data('value'));
        $("input[name='keyword']").val($("#keyword").val());
        frm.attr("action", "/promotion/event/list");
        frm.submit();
    }

    $(document).ready(function () {
        addBtnEvent();
        $('input[type="text"]').keypress(function (e) {
            if (e.which == 13) {
                goSearch();
            }
        });
    });

	</script>
	<style>
		body {
		    font-family: 'Pretendard', sans-serif;
		}
		ul, ol {
			list-style: none;
		}
		a {
			text-decoration: none;
		}
		img {
			max-width: 100%;
			vertical-align: top;
			border: 0;
		}
		.content_wrap {
			min-height: 700px;
		}
		.frame_sm {
			position: relative;
			width: 1100px;
			margin: 0 auto;
		}
		.page_head {
			position: relative;
			padding-top: 70px;
			background: #fff;
		}
		.page_head .tit_area {
			position: relative;
			text-align: center;
			max-width: 1100px;
			margin: 0 auto;
			z-index: 11;
		}
		.page_head .tit_area .tit {
			display: inline-block;
			font-size: 30px;
			font-weight: 700;
		}
		.event_list_wrap {
			margin-top: 35px;
		}
		.view_list_top {
			position: relative;
			margin-bottom: 20px;
		}
		.view_list_top .tit {
			display: inline-block;
			font-size: 20px;
			font-weight: 500;
			vertical-align: middle;
			margin-right: 20px;
		    margin-top: 0;
    		margin-bottom: 0;
		}
		.view_list_top .sep_list {
			display: inline-block;
			vertical-align: middle;
			overflow: hidden;
		    margin-top: 0px;
    		margin-bottom: 0px;
    		padding-left: 0px;
		}
		.sep_list li {
			float: left;
			position: relative;
			padding: 0 13px 0 0;
			color: #555;
			font-size: 13px;
		}
		.custom_radio {
			position: relative;
			display: inline-block;
		}
		.custom_radio input[type="radio"] {
			position: absolute;
			width: 1px;
			height: 1px;
			padding: 0;
			margin: -1px;
			overflow: hidden;
			clip: rect(0,0,0,0);
			border: 0;
			box-sizing: border-box;
		}
		.custom_radio .radio_sort_check + label {
			display: inline-block;
			vertical-align: top;
			cursor: pointer;
			color: #333;
			font-size: 14px;		
		}
		.sep_list .li:before {
			display: inline-block;
			content: '';
			width: 1px;
			height: 10px;
			vertical-align: middle;
			background: #C4C4C4;
			margin: -1px 11px 0 0;
		}
		.custom_radio .radio_sort_check:checked + label {
			color: #FF6001;
			font-weight: 700;
		}
		.custom_radio .radio_sort_check:checked + label:before {
			display: inline-block;
			content: '';
			width: 12px;
			height:8px;
			background: url(ProjectImages/Main/ico_form.png) 0 0;
			margin-right: 5px;
		}
		.view_list_top .btn_option {
			position: absolute;
			top: 0;
			right: 0;
		}
		.btn_option.btn_default {
			color: #666;
		}
		.btn_default {
			background: #fff;
			color: #333;
			border: 1px solid #ccc;
		}
		.btn_option {
			/* height: 32px; */
			padding: 5px 10px;
		}
		[class*="btn_option:"] {
			border-radius: 2px;
			display: inlnie-block;
			text-align: center;
			box-sizing: border-box;
			vertical-align: top;
		}
		.event_list_wrap .view_list_top .ico_btn_ann {
			margin-top: 0;
			margin-right: 2px;
		}
		.btn_option > i {
			vertical-align: middle;
		}
		.ico_btn_ann {
			background-position: -180px 0;
			width: 12px;
			height: 11px;
		}
		[class^="ico_btn_"] {
			display: inline-block;
			background-image: url(ProjectImages/Main/ico_btns.png);	
		}
		.btn_option i + span {
			margin-left: 4px;
		}
		.btn_option > span {
			font-size: 13px;
			line-height: 1.6;
			font-weight: 500;
		}
		[class*="btn_option"] > span {
			display: inline-block;
			vertical-align: top;
		}
		
		[class*="grid_area_"].gap40 {
			margin: 0 -20px 100px;
			padding-left: 40px;
		}
		[class*="grid_area_"] {
			position: relative;
			font-size: 0;
			text-align: left;
		}
		.event_list_wrap .grid_area_span2 > .colum {
			margin-top: 40px;
		}
		.grid_area_span2 > .colum:nth-child(-n+2) {
			margin-top: 0 !important;
		}
		/* [class*="grid_area_"].gap40 > .colum {
			padding-left: 20px;
			padding-right: 20px;
		} */
		[class*="grid_area_"] > .colum {
			display: inline-block;
			vertical-align: top;
			font-size: 14px;
		}
		.grid_area_span2 > .colum {
			width: 50%;
		}
		.event_item {
			position: relative;
		}
		.event_item .img {
			width: 530px;
			height: 208px;
			overflow: hidden;
			border-radius: 3px;
		}
		.event_item .txt {
			margin-top: 10px;
			position: relative;
			word-break: break-all;
		}
		.event_item .txt .tit {
			font-size: 16px;
			line-height: 20px;
			font-weight: 500;
		    margin-top: 0;
		    margin-bottom: 0;
		}
		.text_elps {
			text-overflow: ellipsis;
			white-space: nowrap;
			overflow: hidden;
			word-break: break-all;
		}
		.event_item .txt .date {
			color: #999;
			font-size: 14px;
			line-height: 16px;
			margin-top: 3px;
			margin-bottom: 0;
		}
		.event_item .txt .date .date_txt {
			color: #888;
		}
		
		
		
	</style>
</head>
<body>
	<div>
		<%
				boolean id=session.getAttribute("id")==null?false:true;
				if(id==false){
			%>
				<div id="head_inner">
					<%@ include file="MainFrame.jsp"%>
				</div>
			<% 
				}else{
			%>
				<div id="head_inner">
					<%@ include file="MainFramesessionon.jsp"%>
				</div>
			<% 
				}	
			%>
	</div>
	<div class="content_wrap frame_sm">
		<div class="page_head">
			<div class="tit_area"><h2 class="tit">이벤트</h2></div>
		</div>
		<div class="event_list_wrap">
			<div class="view_list_top">
				<h3 class="tit">진행중 이벤트</h3>
				<ul class="sep_list">
					<!-- <li>
						<div class="custom_radio">
							<input type="radio" id="all" class="radio_sort_check btn_event"/>
							<label for="all">전체</label>
						</div>
					</li> -->
					<li class="li">
						<div class="custom_radio">
							<input type="radio" id="200" class="radio_sort_check btn_event" checked/>
							<label for="200">진행중 이벤트</label>
						</div>
					</li>
					<!-- <li class="li">
						<div class="custom_radio">
							<input type="radio" id="300" class="radio_sort_check btn_event"/>
							<label for="300">종료된 이벤트</label>
						</div>
					</li> -->
				</ul>
				<a href="#" class="btn_option btn_default win_clob">
					<i class="ico_btn_ann"></i>
					<span>당첨자 발표 보기</span>
				</a>
			</div>
			<ul class="grid_area_span2 gap40">
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/1.png" /></div>
						<div class="txt">
							<p class="tit text_elps">신규 캠페인 오픈 기념 댓글 이벤트</p>
							<p class="date">2022.05.27 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/2.png" /></div>
						<div class="txt">
							<p class="tit text_elps">주문 마감 시간 변경 안내</p>
							<p class="date">2022.05.04 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/3.png" /></div>
						<div class="txt">
							<p class="tit text_elps">랭킹닭컴 홍보대사 파트너스 모집!</p>
							<p class="date">2022.06.03 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/4.png" /></div>
						<div class="txt">
							<p class="tit text_elps">카카오페이 결제 시 최대 3,000원 할인!</p>
							<p class="date">2022.06.01 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/5.png" /></div>
						<div class="txt">
							<p class="tit text_elps">토스로 1만원 이상, 첫 결제 시 3000원 할인!</p>
							<p class="date">2022.06.01 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/6.png" /></div>
						<div class="txt">
							<p class="tit text_elps">앱 다운받고 첫 로그인시 2천원 할인쿠폰 증정!</p>
							<p class="date">2021.07.01 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/7.png" /></div>
						<div class="txt">
							<p class="tit text_elps">지금 신규 가입하면 1,000포인트 즉시 지급!</p>
							<p class="date">2022.01.03 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/8.png" /></div>
						<div class="txt">
							<p class="tit text_elps">토스 후불 결제 시 오늘 결제금액 0원!</p>
							<p class="date">2022.06.14 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/9.png" /></div>
						<div class="txt">
							<p class="tit text_elps">[랭킹닭컴 X LG U+] 신규회원, 신제품 할인쿠폰</p>
							<p class="date">2022.05.27 - <span class="date_txt">2022.06.30</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/10.png" /></div>
						<div class="txt">
							<p class="tit text_elps">[랭킹닭컴 X KT] 신규회원, 신제품 할인쿠폰</p>
							<p class="date">2022.05.27 - <span class="date_txt">2022.06.30</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/11.png" /></div>
						<div class="txt">
							<p class="tit text_elps">프리미엄 마스터 카드 결제 시 최대 5% 추가적립</p>
							<p class="date">2021.01.28 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
				<li class="colum">
					<div class="event_item">
						<div class="img"><img src="ProjectImages/Main/12.png" /></div>
						<div class="txt">
							<p class="tit text_elps">랭킹닭컴 카드 신청하기</p>
							<p class="date">2022.06.10 - <span class="date_txt">이벤트 종료 시</span></p>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
		<script>
			$(this).ready(function(){
				$("#bottom").load("BottomFrame.jsp");
			});
		</script>
		<div id="bottom"></div>
</body>
</html>
