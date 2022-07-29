<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<link rel="shortcut icon" href="rankingimages/favicon.ico">
<head>
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
</style>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
</head>
<body>
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
		<a href="infochange2.jsp">정보수정</a><br/>
		</p>
		</div>
		</div>
		<div id="voice">
			<i id="voiceimg"></i><span style=position:relative;top:0px;left:-30px;>고객의 소리</span>
		</div>
</body>
</html>