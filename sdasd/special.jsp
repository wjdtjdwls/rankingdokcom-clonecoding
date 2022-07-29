<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<link rel="shortcut icon" href="Images/favicon.ico">
<meta charset="UTF-8">
<title>랭킹닭컴</title>
<script src = "js/jquery-3.6.0.min.js"></script>
</head>

	<style>
	
		ul{
			padding-left : 0;
		}
		
		html, body {/* 헤더 css */
			height: 100%;
			color: #333;
			font-size: 14px;
			font-weight: 400;
			/* line-height: 1.4; */
			font-family: 'Pretendard', sans-serif;
			word-break: break-all;
			margin:0,auto;
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
			margin-left:72px;
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
			background: black;
			color: white;
		}
		
		#menu1 img {
			margin-top: 5px;
		}
		
		.search{
			text-align:center;
			border:0px solid white;
		}/* 헤더 */
		
		.all_wrap{
			width : 1300px;
			margin : 0 auto;
		}
		
		.goods_ranking_area{
			border-top : 1px solid #eee;
			width: 1300px;
		}
		
		.special_category{
			margin-top : 60px;
		}
		
		table{
			width : 1100px;
			height : 90px;
			border-collapse: collapse;
			margin : 0 auto;
		}
		
		td{
			border : 1px solid #ccc;
			padding : 10px 0 11px;
		}
		
		.goods_ranking_area .special_category td > a{
			padding :0 18px 0 18px;
		}
		
		.top_img_area{
			width: 1100px;
   			margin: 30px auto;
		}
		
		.special_price_goods_area{
			width : 1100px;
		}
		
		.section01{
			width : 1100px;
			margin : 0 auto;
		}
		
		ul > li{
			display : inline-block;
		}
		.section02{
			width : 1100px;
			margin : 0 auto;
			margin-top : 80px;
		}
		.section03{
			width : 1100px;
			margin : 0 auto;
			margin-top : 80px;
		}
		.section04{
			width : 1100px;
			margin : 0 auto;
			margin-top : 80px;
		}	
		.section05{
			margin : 0 auto;
			width : 1100px;
			margin-top : 80px;
		}
		.section06{
			width : 1100px;
			margin : 0 auto;
			margin-top : 80px;
		}
		.section07{
			width : 1100px;
			margin : 0 auto;
			margin-top : 80px;
		}
		.section08{
			width : 1100px;
			margin : 0 auto;
			margin-top : 80px;
		}
		
		.section01 img{
			width : 256px;
			height : 256px;
		}
		.section02 .img_area img{
			width : 256px;
			height : 256px;
		}
		.section03 .img_area img{
			width : 256px;
			height : 256px;
		}
		.section04 .img_area img{
			width : 256px;
			height : 256px;
		}
		.section05 .img_area img{
			width : 256px;
			height : 256px;
		}
		.section06 .img_area img{
			width : 256px;
			height : 256px;
		}
		.section07 .img_area img{
			width : 256px;
			height : 256px;
		}
		.section08 .img_area img{
			width : 256px;
			height : 256px;
		}
		.section01 li{
			padding : 0 7px 0 8px;
		}
		.section02 li{
			padding : 0 7px 0 8px;
		}
		.section03 li{
			padding : 0 7px 0 8px;
		}
		.section04 li{
			padding : 0 7px 0 8px;
		}
		.section05 li{
			padding : 0 7px 0 8px;
		}
		.section06 li{
			padding : 0 7px 0 8px;
		}
		.section07 li{
			padding : 0 7px 0 8px;
		}
		.section08 li{
			padding : 0 7px 0 8px;
		}
		
		
		.delivery_special{
			background: url(Images/delivery.png) 0 0;
			width : 64px;
			height : 20px;
			position: relative;
			display: inline-block;
		}
		
		.point{
			float : right;
		}
		
		.point5{
			display: inline-block;
		    background: url(Images/ico_bullet.png)-90px -160px;
		    width: 15px;
		    position: relative;
		    height: 12px;
		}
		
		.point_num{
			font-size : 13px;
			font-weight: 500;
		}
		
		.review_counts{
			font-size : 13px;
			color : #999;
		}
		
		.top_img{
			width : 100%;
		}
		
		.mid{
			font-size : 13px;
			line-height : 22px;
			margin : 8px 0 6px;
		}
		
		.before_price{
			
		}
		
		.goods_ranking_area ul li:nth-child(n+5){
			margin-top : 50px;
		}
		
		
		/* li {
			display : inline-block;
		} */
		.ul2{
			display:block;
		}
		.ul1 li{
			display:block;
		}
		.ul2 li{
			display:block;
		}#endbottom li{
			display:block;		
		}
	</style>
<body>

	
			
	<div class = "all_wrap">
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
			
			<div class = "goods_ranking_area">
				<div class = "special_category">
					<table>
						<tr>
							<td><a href = "#section01">내 몸을 바꿔줄 식단♡</a></td>
							<td><a href = "#section02">필요할 때 언제든 특급배송</a></td>
							<td><a href = "#section03">혜택이 쏟아지는 6월!</a></td>
							<td><a href = "#section04">랭킹이 보장하는 인기 닭가슴살</a></td>
						</tr>
						
						<tr>
							<td><a href = "#section05">든든한 도시락볶음밥</a></td>
							<td><a href = "#section06">여름 준비 본격 START</a></td>
							<td><a href = "#section07">더 강력해진 멤버십 특가</a></td>
							<td><a href = "#section08">6월의 브랜드, 잇메이트</a></td>
						</tr>
					</table>
					
					<div class = "top_img_area">
						<img src="Images/top_img.png">
					</div>
					
				</div>
				
				<div class = "section01" id = "section01">
					<ul>
						<li>
							<div class = "img_area">
								<a href = "javascript:;"><img src = "Images/이달의_특가/1/"></a>
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/2.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/3.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/4.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/5.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/6.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/7.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/8.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/9.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/이달의_특가/1/10.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<span class = "mid">
								[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
							</span>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					</ul>
				</div>
				<!-- 두번째 -->
				<div class = "section02" id="section02">
					<img src = "Images/special_del.png" >
					
					<div>
						<ul>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						</ul>
					</div>
				</div>
				
				<div class = "section03" id = "section03">
					<img src = "Images/every_day.png">
					
					<div>
						<ul>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						</ul>
					</div>
				</div>
				
				<div class = "section04" id = "section04">
					<img src = "Images/popular.png">
					
					<div>
						<ul>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						</ul>
					</div>
				</div>
				
				<div class = "section05" id ="section05">
					<img src = "Images/rice.png">
				
					<div>
						<ul>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						</ul>
					</div>
				</div>
				
				<div class ="section06" id = "section06">
					<img src="Images/lite_food.png">
						<ul>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
							<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
						</ul>
				</div>
			</div><!-- 이달의 특가 contents -->
			
			<div class = "section07" id="section07">
				<img src= "Images/orange_mem.png">
				<ul>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
				</ul>
			</div>
			
			<div class = "section08" id="section08">
				<img src="Images/eatmate.png">
				
				<ul>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
					<li>
							<div class = "img_area">
								<img src = "Images/share.png">
							</div>
							
							<div class = "top">
								<em class = "delivery_special"></em>
								<span class = "point">
									<em class = "point5"></em>
									<span class="point_num">5</span>
									<span class = "review_counts">(3)</span>
								</span>
							</div>
							
							<div class = "mid">
								<span>
									[6월 한정]뱃살 쏙~ 가비 패키지 26% 할인
								</span>
							</div>
							
							<div class ="bottom">
								<span class = "discount">26%</span>
								<span class = "price">29,000</span>원
								<div class = "before_price">
									<div>
										38,880<span>원</span>
									</div>
								</div>
								<div class = "limited_quantity"><img src = "Images/limit_qty.png" style = "width : 50px; height : 20px;"></div>
								
							</div>
							
						</li>
				</ul>
			</div>
	</div><!-- all_wrap -->
			<script>
					$(this).ready(function(){
						$("#bottom").load("BottomFrame.jsp");
					});
				</script>
				<div id="bottom"></div>
				</div>
	
</body>
</html>