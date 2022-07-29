<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="shortcut icon" href="rankingimages/favicon.ico">
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
			border:0px solid white;
		}
		.join-area{
			width:520px;
			margin:0 auto;
			padding:60px 100px 90px;
			margin-left:290px;
			margin-right:290px;
			background-color:white;
		}
		.join-area input{
			outline:none;
			box-sizing:border-box;
		
		}
		.id{
			witdh:522px;
			
		}
		.pw{
			witdh:522px;
			
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
			margin-top:30px;
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
		    margin-top: 40px;
		    margin-bottom:20px;
		    font-size:15px;
		    margin-left:126px;
		}
		#idcheck{
			padding: 0px 5px;
		    border: 1px solid #666;
		    font-size: 13px;
		    box-sizing: border-box;
		    height: 50px;
		    border-radius: 3px;
		    width: 66.95px;
		    background: #fff;
		    cursor: pointer;
		}
		#nickcheck{
			padding: 0px 5px;
		    border: 1px solid #666;
		    font-size: 13px;
		    box-sizing: border-box;
		    height: 50px;
		    border-radius: 3px;
		    width: 66.95px;
		    background: #fff;
		    cursor: pointer;
		}
		#friend_check{
			padding: 0px 5px;
		    border: 1px solid #666;
		    font-size: 13px;
		    box-sizing: border-box;
		    height: 50px;
		    border-radius: 3px;
		    width: 66.95px;
		    background: #fff;
		    cursor: pointer;
		}
		#email-select{
			width:135px;
			height:50px;
			padding:10px;
			border-radius:3px;
			border:1px solid #ccc;
		}
		#year{
			width:135px;
			height:50px;
			padding:10px;
			margin-right:2px;
			border-radius:3px;
			border:1px solid #ccc;
		}
		#month{
			width:135px;
			height:50px;
			padding:10px;
			margin-right:2px;
			border-radius:3px;
			border:1px solid #ccc;
		}
		#day{
			width:135px;
			height:50px;
			padding:10px;
			border-radius:3px;
			border:1px solid #ccc;
			}
		.login-container {
			width:1300px;
			background-color:#f7f7f7;
			padding-top: 100px;
			padding-bottom:100px;
		}
		#btnimages{
			display: inline-block;
    		content: '';
    		border:0;
    		width: 18px;
    		height: 18px;
    		background: url(rankingimages/ico_btns.png) 0 0;
    		vertical-align: top;
    		cursor: pointer;
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
		#accent{
			background: #f8f8f8;
		    padding: 12px;
		    margin-top: 10px;
		    max-height: 125px;
		    overflow-y: auto;
		    color: #333;
		    font-size: 13px;
		    line-height: 18px;
		    
		}
		#accent_table{
			background: #f8f8f8;
		    padding: 12px;
		    margin-top: 10px;
		    overflow-y: auto;
		    color: #333;
		    font-size: 13px;
		    line-height: 18px;
		    max-height: 125px;
		   }
		#accent_table th{
			    padding: 15px 0 15px 18px;
			    border-top: 1px solid #ddd;
			    font-weight: bold;
			    text-align: left;
			    vertical-align: top;
			    font-size: 13px;
			    color: #333;   
		}
		#accent_table td{
			padding: 15px 0 15px 10px;
		    border-top: 1px solid #ddd;
		    text-align: left;
		    vertical-align: middle;
		    word-break: break-all;
		    word-wrap: break-word;
		    font-size: 13px;
		    color: #333;
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
    		text-align: center;
    		cursor:pointer;
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
	</style>
	<script>
		$(function(){
			$('#allck').click(function(){
				if($(this).is(':checked')){
					$(".consent").attr('checked',true);
				}else{
					$(".consent").attr('checked',false);
				}
			});
			$(".consent").click(function(){ 	
				if($(".consent").length!= $(".consent:checked").length) 
					$("#allck").attr("checked", false);
				else 
					$("#allck").attr("checked", true);
			});
			$("#phonecheck").click(function(){
				$("#pop1").show();
			});
			$("#close_button").click(function(){
				$("#pop1").hide();
			});
			$("#receive").click(function(){
				alert("인증번호가 발송되었습니다!")
				$("#pop1").hide();
			}); 
		});
		</script>
		<script>
			$(this).ready(function(){
				$("#accent_content").click(function(){
						$("#accent").slideToggle();
				});
				$("#personer_content").click(function(){
					$("#accent_table").slideToggle();
				});	
			});
	</script>
</head>
<body>
<script>
	$(document).keypress(function(e){ 
	  	if (e.keyCode == 13) 
	  		e.preventDefault(); 
	  });
</script>
<div style="width:1300px;margin:0 auto;">
		<div id=head_inner>
				<%@include file="MainFrame.jsp"%>
			</div>
<form id="register"action="Register_action.jsp">
<div class="login-container">
	<div class="join-area">
	<div style=width:522px;>
		<h2 style="text-align:center;font-size:32px;font-weight:500;margin-bottom:30px;">회원가입</h2>
			<div class="id"><span style= margin-right:53px;> 아이디 <i class="es2"></i> </span>
				<input id="id"type="text"name="id" placeholder="4~16자 이상 영문 또는 숫자만 사용 가능"style=width:344.05px;height:50px;margin-right:2px;border-radius:3px;>
				<input type="button" id="idcheck"value="중복확인">
				<input type="hidden" id="checked_id"/> 
			</div>
			<script>
				$(function(){
					$("#idcheck").click(function(){
						var id= $("#id").val();
						$.ajax({
							url:"idcheckServlet",
							type:"get",
							data:{"id":id},
							dataType:"json",
							success:function(d){
								result=d.result;
								if(result){
									alert("사용이 불가능한 아이디 입니다.");
									$("#id").val("");
								}else{
									alert("사용이 가능한 아이디 입니다.");
									$("#checked_id").val("y");
								}
							},
							error:function(er){
								alert("실패 원인:" + er);
							}
						});
					});
					
				});
			</script>
			<div class="pw"><span style= margin-right:41px;>비밀번호 <i class="es2"></i> </span>
				<input id="pw1"type="text"name="pw" placeholder="6~16자 영문,숫자,특수문자 1개 이상씩 혼용 필수"style=width:417px;height:50px;border-radius:3px;><br/>
				<span class="pwcheck">
				<input id="pw2"type="text" placeholder="비밀번호 확인"style=width:417px;height:50px;margin-left:105px;margin-top:10px;border-radius:3px;></span>
			</div>
			<div class="name"><span style= margin-right:65px;>이름 <i class="es2"></i> </span>
				<input id="name"type="text"name="name" placeholder="2자 이상 입력"style=width:417px;height:50px;border-radius:3px;>
			</div>
			<div class="nick"> <span style=margin-right:54px;>닉네임 <i class="es2"></i>  </span>
				<input id="nick"type="text"name="nick" placeholder="한글 8자,영문 16자 이내"style=width:344.05px;height:50px;margin-right:2px;border-radius:3px;>
				<input type="button" id="nickcheck"value="중복확인">
				<input type="hidden" id="checked_nick"/> 
			</div>
			<script>
				$(function(){
					$("#nickcheck").click(function(){
						var nick = $("#nick").val();
						$.ajax({
							url:"nickcheckServlet",
							type:"get",
							data:{"nick":nick},
							dataType:"json",
							success:function(d){
								result1=d.result1;
								if(result1){
									alert("사용이 불가능한 닉네임입니다.");
									$("#nick").val("");
								}else{
									alert("사용이 가능한 닉네임입니다.");
									$("#checked_nick").val("y");
								}
							},
							error:function(er){
								alert("실패 원인:" + er);
							}
						});
					});
				});
			</script>
			<div class="phone"> 
				<span style= margin-right:41px;>휴대전화 <i class="es2"></i></span> 
				<input  type="text"id="phonecheck"value=""name="P_number" readonly placeholder="휴대폰 인증"style=width:417px;height:50px;border-radius:3px;>
			</div>
			<div id="pop1"style=display:none;>
				<div id="pop1-layer">
					<div id="pop1-inner">
						<div id="pop1-head">
							<h4>휴대폰번호 가입인증</h4>
						</div>
						<div id="pop1-content">
							<p class="message">휴대폰 번호 입력 후 인증번호 받기 버튼을 클릭해 주세요.</p>
							<button type="button" id="close_button"><i id="x-btn"></i></button>
							<select id="select-box" name="phone1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="017">017</option>
							</select>
							<span id="middle-text">-</span>
							<input id="phone2"name="phone2"class="input-text"type="text">
							<span id="middle-text">-</span>
							<input id="phone3"name="phone3"class="input-text"type="text">
						</div>
					</div>
					<button type="button"id="receive">인증번호 받기</button>
				</div>
			</div>
			<script>
				$(function(){
					$("#pop1-content input").on("input",function(){
							if($("#phone2").val() && $("#phone3").val()){
								var p_number= $("select[name=phone1] option:selected").text()+$("#phone2").val()+$("#phone3").val();
								$("#phonecheck").val(p_number);
						}else{
							$("#phonecheck").val("");
						}
					});
				});
			</script>
			<div class="email"><span style= margin-right:53px;>이메일 <i class="es2"></i></span>
				<input id="email"type="text"name="e_mail" placeholder="이메일 주소"style=width:276px;height:50px;border-radius:3px;margin-right:2px;>
				<select id ="email-select"size="1"name="site">
					<option value="1" selected>직접입력</option>
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
					<option value="paran.com">paran.com</option>
					<option value="unitel.co.kr">unitel.co.kr</option>
				</select>
			</div>
			<div class="birth"> <span style=margin-right:46px;>생년월일<i class="es2"></i></span> 
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
					<option value="1980">1980 </option>
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
			<div class="gender"> <span style =margin-right:66px;>성별 <i class="es2"></i></span>
				<input type="radio" name="gender"value="남"style="width:20px;height:20px;accent-color:#ff6001;">
				<span style =font-size:15px;vertical-align:super;margin-left:3px;>남자</span>
				<input type="radio" name="gender"value="여"style=margin-left:30px;width:20px;height:20px;accent-color:#ff6001;>
				<span style =font-size:15px;vertical-align:super;margin-left:3px;>여자</span>
			</div>
			<div class="lifetime"><span style =margin-right:41px;> 평생회원 <i class="es2"></i></span>
				
				<input type="radio" name="lifetime-accept"value="o"style="width:20px;height:20px;accent-color:#ff6001;">
				<span style =font-size:15px;vertical-align:super;margin-left:3px;>동의</span>
				<input type="radio" name="lifetime-accept"value="x"style=margin-left:30px;width:20px;height:20px;accent-color:#ff6001;>
				<span style =font-size:15px;vertical-align:super;margin-left:3px;>동의안함</span>
				<div style="width:417px;height:25px;padding:10px 0 0;margin:10px 0 0;border-top:1px solid #ddd;margin-left:105px;">
					<span style=font-size:12px;color:#999999;>※ 평생회원은 회원탈퇴 전까지  휴면회원으로 전환되지 않습니다.</span>
				</div>
			</div>
			<div class="accept"> 
				<span style=margin-right:10px;vertical-align:top;>약관동의</span>
					<div style="display:inline-block;padding-bottom:10px;">
						<input type="checkbox" id="allck" name="male"style=margin-left:58px;width:18px;height:18px;accent-color:#ff6001; value ="selectall">
						<span style=vertical-align:super;>전체동의</span>
					</div>
					<div style="margin-left:107px;padding:12px 0;border-top:1px solid #ddd;line-height:1.7;border-bottom:1px solid #ddd;width:415px;">
					<input type="checkbox" id="consent"class="consent"name="accept1"value="consent"style=margin-left:14px;width:18px;height:18px;accent-color:#ff6001;>
					<span style=vertical-align:super;>회원가입 약관동의</span>
					<span style=color:red;vertical-align:super;font-size:12px;>(필수)</span>
					<span id="accent_content"style=float:right;font-size:10px;cursor:pointer;>내용보기</span><br/>
					
					<div id="accent"style=display:none;>
						제1조(목적)
						이 약관은 주식회사 (주)푸드나무(이하 “회사”라 한다)가 운영하는 랭킹닭컴 사이버 몰(이하 "몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.<br/>
						<br/>
						「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」<br/>
						제2조(정의)<br/>
						① "몰" 이란 “회사”가 재화 또는 용역(이하 "재화등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br/>
						② "이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br/>
						③ “회원”이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br/>
						④ “비회원”이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.<br/>
						⑤ "쿠폰"이란 "몰"의 이용 촉진을 위하여 생일, 기념일, 프로모션 등 “몰”이 정한 기준에 따라 “회원”에게 무료로 지급하는 “몰” 전용의 사이버 증표를 말합니다.<br/>
						⑥ “마일리지 포인트”란 “몰”의 이용 촉진을 위하여 “회원”이 상품 구매 시, “몰”이 정한 기준에 따라 “회원”에게 부여하는 “몰” 전용의 사이버 화폐를 말합니다.<br/>
						⑦ “마케팅 포인트”란 “몰”의 이용 촉진을 위하여 “회원”이 상품 구매 후 후기 적성, 이벤트 참여, 이용 불편 보상에 따라 “회원”에게 부여하는 “몰” 전용의 사이버 화폐를 말합니다.<br/>
						⑧ “포인트”란 “몰”이 “회원”에게 지급하는 “마일리지 포인트”와 “마케팅 포인트”를 통칭한 “몰” 전용의 사이버 화폐를 말합니다.<br/>
						⑨ "예치금"이란 “회원”이 주문을 취소나 반품, 또는 초과 입금하여 “회사”가 환불해야 하는 대금 중, 고객의 요청 또는 환불 실행 불가 사유에 따라 “회사”에 임시로 예치해 놓은 이자가 발생하지 않는 사이버 화폐를 말합니다.<br/>
						<br/>
						제3조 (약관등의 명시와 설명 및 개정)<br/> 
						① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 “몰” 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br/>
						② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br/>
						③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br/>
						④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br/>
						⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 '몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br/>
						⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br/>
						<br/>
						제4조(서비스의 제공 및 변경)<br/>
						① "몰"은 다음과 같은 업무를 수행합니다.<br/>
						1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br/>
						2. 구매계약이 체결된 재화 또는 용역의 배송<br/>
						3. 기타 "몰"이 정하는 업무<br/>
						② "몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br/>
						③ "몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 수단을 이용해 통지합니다.<br/>
						④ 전항의 경우 "몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br/>
						<br/>
						제5조(서비스의 중단)<br/> 
						① "몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br/>
						② "몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br/>
						③ “회사”는 서비스의 원활한 수행을 위하여 필요한 기간을 정하여 사전에 공지하고 서비스를 중지할 수 있습니다. 단, 불가피하게 긴급한 조치를 필요로 하는 경우 사후에 공지할 수 있습니다.<br/>
						④ 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "몰"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "몰"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "몰"이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 ”마일리지 포인트” 또는 “예치금” 등을 "몰"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.<br/>
						<br/>
						제6조(회원가입)<br/> 
						① 이용자는 "몰"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br/>
						② "몰"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.<br/>
						1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실후 3년이 경과한 자로서 "몰"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br/>
						2. 타인의 명의를 도용하거나, 등록 내용에 허위, 기재누락, 오기가 있는 경우<br/>
						3. 기타 회원으로 등록하는 것이 "몰"의 기술상 현저히 지장이 있다고 판단되는 경우<br/>
						4. 만14세 미만의 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 이용신청을 하는 경우<br/>
						③ 회원가입계약의 성립시기는 "몰"의 승낙이 회원에게 도달한 시점으로 합니다.
						④ 회원은 제1항에 의한 등록사항에 변경이 있는 경우, 즉시 "몰"에서 온라인으로 개인정보를 수정하거나 전자우편 또는 기타 방법으로 "회사"에 그 변경 사항을 알려야 합니다. 이를 알리지 않아 발생하는 불이익에 대한 책임은 "회원"에게 있습니다.<br/>
						<br/>
						제7조(회원 탈퇴 및 자격 상실 등) <br/>
						① 회원은 "몰"에 언제든지 탈퇴를 요청할 수 있으며 "몰"은 즉시 회원탈퇴를 처리합니다.<br/>
						② 회원이 다음 각호의 사유에 해당하는 경우, "몰"은 회원자격을 제한 및 정지시킬 수 있습니다.<br/>
						1. 가입 신청시에 허위 내용을 등록한 경우<br/>
						2. "몰"을 이용하여 구입한 재화등의 대금, 기타 "몰"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br/>
						3. 다른 사람의 "몰" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br/>
						4. "몰"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br/>
						③ "몰"이 회원 자격을 제한·정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 "몰"은 회원자격을 상실시킬 수 있습니다.<br/>
						④ "몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br/>
						<br/>
						제8조(회원에 대한 통지)<br/>
						① "몰"이 회원에 대한 통지를 하는 경우, 회원이 "몰"과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.<br/>
						② "몰"은 불특정다수 회원에 대한 통지의 경우 1주일이상 "몰" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br/>
						③ “몰”은 당사에서 정한 절차에 의거하여 12개월 이상 미로그인한 고객에 대하여 쿠폰 발급 후 사용가능 기간 30일, 1만원 할인쿠폰이 휴대폰으로 발송됩니다. (단, 당사에서 정한 모바일 상품권 금액 및 미 로그인기간 기준은 변경 될 수 있습니다.)<br/>
						<br/>
						<br/>
						제9조(구매신청)<br/>
						"몰"이용자는 "몰"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "몰"은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.  단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.<br/>
						1. 재화등의 검색 및 선택<br/>
						2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br/>
						3. 약관내용, 청약철회권이 제한되는 서비스, 배송료·설치비 등의 비용부담과 관련한 내용에 대한 확인<br/>
						4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br/>
						5. 재화등의 구매신청 및 이에 관한 확인 또는 "몰"의 확인에 대한 동의<br/>
						6. 결제방법의 선택<br/>
						<br/>
						제10조 (계약의 성립)<br/>
						① "몰"은 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br/>
						1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br/>
						2. 미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br/>
						3. 기타 구매신청에 승낙하는 것이 "몰" 기술상 현저히 지장이 있다고 판단하는 경우<br/>
						② "몰"의 승낙이 제15조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br/>
						③ "몰"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소등에 관한 정보등을 포함하여야 합니다.<br/>
						<br/>
						제11조(지급방법)<br/>
						"몰"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법중 가용한 방법으로 할 수 있습니다. 단, "몰"은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br/>
						1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br/>
						2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br/>
						3. 온라인무통장입금<br/>
						4. 전자화폐에 의한 결제<br/>
						5. 수령시 대금지급<br/>
						6. “예치금” 또는 "몰"이 지급한 “포인트”에 의한 결제<br/>
						7. "몰"과 계약을 맺었거나 "몰"이 인정한 상품권에 의한 결제 <br/>
						8. 기타 전자적 지급 방법에 의한 대금 지급 등<br/>
						<br/>
						제12조 (쿠폰 제도)<br/>
						① “쿠폰” 지급의 기준 및 사용 혜택은 “회사”의 정책상 변경될 수 있으며, 변경된 내용은 "몰"을 통해 고지함으로써 그 효력이 발생합니다.<br/>
						② “쿠폰”은 쿠폰에 명시된 사용 조건(특정 상품, 특정 카테고리, 특정 입점사 상품 구매) 및 범위(PC, MOBILE, APP, 오프라인 구매)에 모두 부합할 경우에만 결제 금액 할인 또는 배송비 면제 수단으로 사용하실 수 있습니다. 단, 일부 특가 할인 및 포인트 사용 등 타 할인과 동시 사용이 불가할 수 있습니다.<br/>
						③ “쿠폰”은 쿠폰에 명시된 유효기간 동안 사용할 수 있으며, 유효기간 만료 시 사용 또는 재발행 되지 않습니다.<br/>
						④ “쿠폰”은 “몰”에서의 구매 및 이용 촉진을 위해 무료로 지급해 드리는 “몰” 전용의 사이버 증서이므로, 현금으로 반환되지 않습니다.<br/>
						⑤ “쿠폰”은 타인에게 양도가 불가하며, 동일한 회원이 여러 개의 아이디(ID)를 보유하더라도 이전, 전달할 수 없습니다.<br/>
						⑥ "회사"는 "회원"이 "회사"가 승인하지 않은 방법 또는 허위 정보 제공, 본 약관에 위배되는 등의 부정한 방법으로 "쿠폰"을 획득하거나 부정한 목적이나 용도로 "쿠폰"을 사용하는 경우 "쿠폰"의 사용을 제한 또는 “회사”가 정한 방법으로 회수할 수 있으며, "쿠폰"을 사용한 구매 신청을 취소하거나 "회원" 자격을 정지할 수 있습니다.<br/>
						⑦ “회원” 탈퇴 시, 미사용 “쿠폰”은 자동 소멸되며, “회사”는 미사용 “쿠폰”에 대해 별도 보상하지 않습니다. 탈퇴 후, 재가입 하더라도 소멸된 “쿠폰”은 복구되지 아니합니다.<br/>
						<br/>
						제13조 (포인트 제도)<br/>
						① “몰”은 “회원”이 “몰” 내에서 상품 구매 시, 회원 등급에 따라 구매 금액의 일정 비율을 “마일리지 포인트”를 부여할 수 있습니다.<br/>
						② “마일리지 포인트”는 지급 후 1년간 유효하며, 유효기간 내 미사용 포인트는 자동 소멸됩니다.<br/>
						③ “몰”은 “몰” 내에서 상품 후기 작성, 이벤트 참여 등 “회원” 참여 활동에 따라 “마케팅 포인트”를 부여할 수 있습니다.<br/>
						④ “마케팅 포인트”의 지급 기준 및 지급률, 유효기간은 “몰”의 운영 정책에 따라 변경될 수 있으며, “몰” 내 고지함으로써 그 효력이 발생합니다.<br/>
						⑤ “회원”은 “포인트”를 ”몰”이 정한 기준 이상 보유한 경우 “몰”에서 상품 구매 시, 결제 할인 수단으로 사용하실 수 있습니다. 단, 일부 특가 할인 및 쿠폰 할인 등 타 할인과 동시 사용이 불가할 수 있습니다.<br/>
						⑥ “포인트”는 “몰”이 고지한 유효기간 내에 사용할 수 있으며, 유효기간 내 미사용 포인트는 자동으로 소멸됩니다.<br/>
						⑦ “포인트”는 유효기간이 먼저 도래하는 순서로 사용됩니다. 단, 2019년 2월 18일까지 부여된 “포인트”는 유효기간이 없으며, “포인트”사용 시, 우선 차감됩니다.<br/>
						⑧ “포인트”는 “몰”에서의 구매 및 이용 촉진을 위해 무료로 지급해 드리는 “몰” 전용의 사이버 화폐이므로, 현금으로 반환되지 않습니다.<br/>
						⑨ “포인트”은 타인에게 양도가 불가하며, 동일한 회원이 여러 개의 아이디(ID)를 보유하더라도 합산할 수 없습니다. <br/>
						⑩ "포인트"는 "회원"이 "회사"가 승인하지 않은 방법 또는 허위 정보 제공, 본 약관에 위배되는 등의 부정한 방법으로 "포인트"를 획득하거나 부정한 목적이나 용도로 "포인트"를 사용하는 경우 "포인트"의 사용을 제한 또는 “회사”가 정한 방법으로 회수할 수 있으며, "포인트"를 사용한 구매신청을 취소하거나 "회원" 자격을 정지할 수 있습니다.<br/>
						⑪ “회원” 탈퇴 시, 미사용 “포인트”는 자동 소멸되며, “회사”는 미사용 “포인트”에 대해 별도 보상하지 않습니다. 탈퇴 후, 재가입 하더라도 소멸된 “포인트”는 복구되지 아니합니다.<br/>
						<br/>
						제14조 (예치금 제도)<br/>
						① “회사”는 “고객”이 환불 금액을 “예치금”으로 예치를 신청하거나, 환불 실행이 불가한 상황일 경우 “예치금”으로 예치할 수 있습니다.<br/>
						② “예치금”을 보유한 “회원”은 “몰”에서 상품 구매 시, 결제 수단으로 사용할 수 있습니다.<br/>
						③ “예치금”은 “회원”의 요청에 따라 “예치금”의 일부 또는 전부를 고객(은행) 계좌로 출금하실 수 있습니다.<br/>
						④ “회사”는 “예치금”을 고객(은행) 계좌로 출금할 경우 이체 수수료를 공제 후 출금할 수 있습니다.<br/>
						⑤ “예치금”은 타인에게 양도가 불가하며, 동일한 회원이 여러 개의 아이디(ID)를 보유하더라도 합산할 수 없습니다.<br/>
						⑥ "회사"는 "회원"이 "회사"가 승인하지 않은 방법 또는, 본 약관에 위배되는 등의 부정한 방법으로 "예치금"을 획득하거나 부정한 목적이나 용도로 "예치금"을 사용하는 경우 "예치금"의 사용을 제한 또는 “회사”가 정한 방법으로 회수할 수 있으며, "예치금"을 사용한 구매 신청을 취소하거나 "회원" 자격을 정지할 수 있습니다.<br/>
						<br/>
						제15조(수신확인통지·구매신청 변경 및 취소)<br/>
						① "몰"은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br/>
						② 수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 "몰"은 발송전에 이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제18조의 청약철회 등에 관한 규정에 따릅니다.<br/>
						<br/>
						제16조(재화등의 공급)<br/>
						① "몰"은 이용자와 재화등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, "몰"이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다.  이때 "몰"은 이용자가 재화등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br/>
						② "몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다<br/>
						<br/>
						제17조(환급)<br/>
						"몰"은 이용자가 구매신청한 재화등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.<br/>
						<br/>
						제18조(청약철회 등)<br/>
						① "몰"과 재화등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다.<br/>
						② 이용자는 재화등을 배송받은 경우 다음 각 호에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br/>
						1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우<br/>
						2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br/>
						3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br/>
						4. 같은 성능을 지닌 재화등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br/>
						③ 제2항제2호 내지 제4호의 경우에 "몰"이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회등이 제한되지 않습니다.<br/>
						④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화등의 내용이 표시 광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화등을 공급받은 날부터 3월이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.<br/>
						⑤ “몰”은 개별 상품의 성격에 따라 별도의 계약 및 청약철회 관련 규정을 정할 수 있으며, 개별 상품의 상세정보 페이지에 명기 하거나 별도 계약을 체결함으로써 효력이 발생합니다. 청약 철회 사유 발생 시, 개별 상품의 계약 및 청약철회 관련 규정이 우선 적용됩니다.<br/>
						<br/>
						제19조(청약철회 등의 효과)<br/>
						① "몰"은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화등의 대금을 환급합니다. 이 경우 "몰"이 이용자에게 재화등의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br/>
						② "몰"은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화등의 대금의 청구를 정지 또는 취소하도록 요청합니다. <br/>
						③ 청약철회등의 경우 공급받은 재화등의 반환에 필요한 비용은 이용자가 부담합니다. "몰"은 이용자에게 청약철회등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화등의 내용이 표시 광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회등을 하는 경우 재화등의 반환에 필요한 비용은 "몰"이 부담합니다.<br/>
						④ 이용자가 재화등을 제공받을때 발송비를 부담한 경우에 "몰"은 청약철회시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.<br/>
						<br/>
						제20조(개인정보보호)<br/>
						① "몰"은 이용자의 정보수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다.<br/>
						② "회사"는 회원가입 시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.<br/>
						③ "몰"이 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.<br/>
						④ 제공된 개인정보는 당해 이용자의 동의없이 목적외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 “몰”이 집니다. 다만, 다음의 경우에는 예외로 합니다.<br/>
						1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우<br/>
						2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br/>
						3. 재화등의 거래에 따른 대금정산을 위하여 필요한 경우<br/>
						4. 도용방지를 위하여 본인확인에 필요한 경우<br/>
						5. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우<br/>
						6. 수사기관이나 기타 정부기관으로부터 정보제공을 요청받은 경우<br/>
						⑤ "몰"이 제3항과 제4항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 정보통신망이용촉진등에관한법률 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br/>
						⑥ 이용자는 언제든지 "몰"이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "몰"은 이에 대해 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "몰"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br/>
						⑦ "몰"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br/>
						⑧ “몰”은 “이용자”의 개인정보를 제3자에게 제공할 필요가 있는 경우 제공되는 개인정보 항목, 제공받는 자, 이용목적 및 보유·이용기간을 명시하여 “이용자”의 동의를 받고, “몰”로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성하였거나, 보유·이용기간이 만료된 때에는 당해 개인정보를 지체없이 파기합니다.<br/>
						<br/>
						제21조("몰"의 의무)<br/>
						① "몰"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는데 최선을 다하여야 합니다.<br/>
						② "몰"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.<br/>
						③ "몰"이 상품이나 용역에 대하여 「표시·광고의공정화에관한법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br/>
						④ "몰"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br/>
						<br/>
						제22조(회원의 ID 및 비밀번호에 대한 의무)<br/>
						① ID와 비밀번호에 관한 관리책임은 “회원”에게 있으며, 이를 소홀히 하여 발생한 모든 민형사상의 책임은 “회원” 자신에게 있습니다.<br/>
						② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br/>
						③ 회원이 자신의 ID 및 비밀번호의 유출 또는 제3자 사용에 대해 인지하고도 비밀번호를 변경하지 않은 경우 또는 이와 같은 사정을 회사에 통지하지 않거나 회사의 조치에 응하지 않은 경우 등 회원이 본 조의 의무를 준수하지 않아 발생하는 모든 손실이나 손해 등 불이익에 대한 책임은 회원에게 있습니다.<br/>
						<br/>
						제23조(이용자의 의무)<br/>
						① 이용자는 다음 행위를 하여서는 안됩니다.<br/>
						1. 신청 또는 변경시 허위 내용의 등록<br/>
						2. 타인의 정보 도용<br/>
						3. "몰"에 게시된 정보의 변경<br/>
						4. "몰"이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br/>
						5. "몰" 기타 제3자의 저작권 등 지적재산권에 대한 침해<br/>
						6. "몰" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br/>
						7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위<br/>
						8. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰” 이용에 관련하여 “회원”이 부담하는 채무의 미이행<br/>
						9. 상품 등의 구매를 가장하여 재판매 등의 방법으로 자금을 융통하는 것과 같이 비정상적인 결제를 하는 행위<br/>
						10. 진정한 구매 의사없이 "쿠폰" 등을 적용하여 상품구매 후 재판매하기 위한 목적으로 서비스를 이용하는 행위<br/>
						11. 오프라인이나 다른 사이트에서 발생한 구매에 대해 "포인트" 등을 부당하게 확보할 목적으로 서비스를 이용하는 행위<br/>
						12. “회사”의 허락 없이 서비스를 이용하여 영업/광고 활동 등을 하거나, “회사”가 허락한 내용과 범위를 벗어난 영업/광고 활동 행위<br/>
						13. 타인의 신용카드, 은행 계좌, 휴대폰 등을 무단으로 이용 또는 도용하여 상품 등을 구매하는 행위<br/>
						14. “회사” 또는 타인의 명예를 손상시키거나 확인되지 않은 사실을 유포하는 행위 타인의 권리를 침해하는 행위 및 회사의 업무수행에 현저한 지장을 초래하는 행위<br/>
						② "회사"는 제1항을 위반한 "회원"에 대하여 계약 해제, "포인트" 또는 "쿠폰"의 환수, "회원" 자격의 제한, 현금 환불 보류 등의 조치 및 민∙형사 상의 법적 조치 등을 취할 수 있습니다.<br/>
						③ “회원”은 이 약관에서 규정하는 사항 및 “몰” 상의 공지사항 등 “회사”가 정한 제반 정책이나 규정을 수시로 확인하여야 합니다.<br/>
						<br/>
						제24조 (게시물의 관리)<br/>
						① "회원"이 작성한 게시물에 대한 모든 권리와 책임은 이를 게시한 "회원"에게 있으며, "회사"는 "회원"이 작성한 게시물이 다음 각 호에 해당하는 경우 "회사"의 정책에 따라 사전 통지 없이 해당 게시물의 열람을 제한하거나, 이동 또는 삭제 등의 조치를 취할 수 있습니다. <br/>
						1. 타인을 모욕, 비방, 비하하거나 타인의 명예를 훼손하는 게시물<br/>
						2. 범죄 및 불법 행위에 악용될 수 있는 정보를 담고 있는 게시물<br/>
						3. “회사” 또는 제3자의 저작권 등 기타 지적재산권을 포함한 일체의 권리를 침해하는 내용인 경우<br/>
						4. 음란물 또는 일반인의 성적 굴욕감이나 수치심을 유발할 수 있는 내용의 게시물(그러한 내용이 담긴 웹사이트, 앱 등으로 연결될 수 있는 게시물을 포함)<br/>
						5. 어린이와 청소년의 정신적, 신체적 건강을 해칠 우려가 있는 선정적인 내용을 담은 게시물<br/>
						6. 특정인의 개인정보가 노출된 게시물<br/>
						7. 특정 상품 등을 소개하여 판매하거나, 이를 구매, 사용하도록 권하거나 연락을 유도하는 등 직간접적으로 영리추구를 위한 내용을 담고 있는 게시물<br/>
						8. "몰"의 이용 목적에 부합하지 않거나 해당 서비스의 취지와 무관한 내용의 게시물<br/>
						9. 악성코드나 스파이웨어 등이 실행되어 다른 회원, 회사, 판매자 기타 제3자의 시스템 성능 저하, 개인정보 유출 등의 피해를 줄 수 있는 악의적인 코드를 담고 있는 게시물<br/>
						10. 허위의 사실을 마치 진실인 것처럼 기재하여 "회사"의 업무를 방해하거나 "회사"의 사실관계 확인 요청에 2회 이상 불응한 경우<br/>
						11. "회사"가 제공하는 "서비스" 기타 영업행위의 원활한 진행을 방해하는 것으로 판단되는 경우<br/>
						12. 기타 이 약관 또는 법령에 위배되거나 공서양속에 반하는 내용의 게시물<br/>
						② 게시물로 인하여 법률상 이익이 침해된 자는 관련 법령과 고객센터에서 정한 절차에 따라 당해 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, “회사”는 관련 법령에 따라 필요한 조치를 취하여야 합니다.<br/> 
						③ "회원"이 작성한 "게시물"의 저작권은 이를 작성한 "회원" 본인에게 있으며, 해당 게시물이 타인의 저작권을 침해하는 경우 그에 대한 책임은 "회원" 본인이 부담합니다.<br/>
						④ "회원"은 "회사"에게 자신이 작성한 게시물을 독점적으로 이용할 수 있는 권리(license)를 부여합니다. 이에 따라 "회사"는 "회원"이 작성한 "게시물"을 검색노출, 판촉, 홍보 기타의 자료로 무상으로 영구적으로 이용할 수 있으며, 필요한 범위 내에서 "게시물"의 일부를 수정, 복제, 편집할 수 있습니다.<br/>
						⑤ "회원" 탈퇴 이후에는 회원 정보가 삭제되어 작성자 본인을 확인할 수 없으므로 "회원"이 탈퇴이전에 작성한 게시물의 편집이나 삭제가 불가하며, "회원"은 본인이 작성한 게시물의 삭제 또는 게시 중단 등을 원할 경우 "회원" 탈퇴이전에 본인이 작성한 게시물에 대해 삭제 등 조치를 취하여야 합니다.<br/>
						<br/>
						제25조(연결"몰"과 피연결"몰" 간의 관계)<br/>
						① 상위 "몰"과 하위 "몰"이 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "몰"(웹 사이트)이라고 하고 후자를 피연결 "몰"(웹사이트)이라고 합니다.<br/>
						② 연결"몰"은 피연결"몰"이 독자적으로 제공하는 재화등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지 않는다는 뜻을 연결"몰"의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.<br/>
						<br/>
						제26조(저작권의 귀속 및 이용제한)<br/>
						① "몰"이 작성한 저작물에 대한 저작권 기타 지적재산권은 "몰"에 귀속합니다.<br/>
						② 이용자는 "몰"을 이용함으로써 얻은 정보 중 "몰"에게 지적재산권이 귀속된 정보를 "몰"의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br/>
						<br/>
						제27조(분쟁해결)<br/>
						① "몰"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.<br/>
						② "몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br/>
						③ "몰"과 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시 도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.<br/>
						<br/>
						제28조(재판권 및 준거법)<br/>
						① "몰"과 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br/>
						② "몰"과 이용자간에 제기된 전자상거래 소송에는 한국법을 적용합니다.<br/>
						<br/>
						[부칙]<br/>
						제1조(시행일)<br/>
						① 이 약관은 2019년 10월 11일부터 적용됩니다.<br/>
						② 종전의 약관은 이 약관으로 대체됩니다.
					</div>
					<input type="checkbox"id="person_consent"class="consent" name="accept2"value="person-consent"style=margin-left:14px;width:18px;height:18px;accent-color:#ff6001;>
					<span style=vertical-align:super;>개인정보처리방침 동의</span>
					<span style=color:red;vertical-align:super;font-size:12px;>(필수)</span>
					
					
					<span id="personer_content"style=float:right;font-size:10px;cursor:pointer;>내용보기</span><br/>
						<div id="accent_table"style=display:none;>
						<table style="border-collapse:collapse;">
						<tr>
							<th style=border-top:0;padding-top:0;>수집하는 개인정보 항목</th>	
							<td style=border-top:0;padding-top:0;>회원가입시(회원제 서비스 제공)<br/>
							필수 : 아이디, 비밀번호, 이름, 닉네임, 휴대폰번호, 이메일, 생년월일<br/>
							선택 : 성별</td>
							</tr>
							<tr>
							<th>수집 및 이용목적	회원관리 및 이용자 식별</th>
							<td>- 회원 가입의사 확인, 회원제 서비스 제공, 회원자격 유지관리, 만 14세 미만여부 확인<br/></td>
							</tr>
							<tr>
							<th>보유 및 이용기간</th>
							<td>회원가입시 부터 탈퇴하거나, 회원에서 제명된 때까지<br/>
							*동의를 거부할 수 있으나 거부시 회원가입이 불가능합니다.</td>
							</tr>
						</table>
					</div>
					
					<input type="checkbox" id="email_consent"class="consent"name="accept3"value="email-consent"style=margin-left:14px;accent-color:#ff6001;width:18px;height:18px;>
					<span style=vertical-align:super;>이메일수신동의 (선택)</span><br/>
					<input type="checkbox" id="sms_consent"class="consent"name="accept4"value="sms-consent"style=margin-left:14px;width:18px;height:18px;accent-color:#ff6001;>
					<span style=vertical-align:super;>SMS 수신동의 (선택)</span><br/>
					</div>
						<div style="padding:10px 0;"> 
							<span style=margin-left:98px;font-size:12px;color:#999999;>※ 회원정보 수정에서 언제든지 수신거부 하실 수 있습니다.</span><br/>
							<span style=margin-left:98px;font-size:12px;color:#999999;>※ 상품 구매정보는 수신동의 여부 관계없이 받아 보실 수 있습니다. </span>
						</div>
			</div>	
			<div class="recom-id"><span style=margin-right:43px;>추천아이디 </span>
				<input type="text"id="friend"name="friends" placeholder="추천아이디 입력"style=width:342.05px;height:50px;border-radius:3px;margin-right:1px;>
				<input type="button" id="friend_check"value="확인하기">
			</div>
				<script>
					$(function(){
						$("#friend_check").click(function(){
							var friend = $("#friend").val();
							$.ajax({
								url:"friendscheckServlet",
								type:"get",
								data:{"friend":friend},
								dataType:"json",
								success:function(d){
									result2=d.result2;
									if(result2){
										alert(friend+"가 추천 되셨습니다.");
										$("#friend_check").attr("disabled",true);
										$("#friend").attr("readonly",true);
									}else{
										if($("#id").val() == $("#friend").val()){
											alert("자기 자신은 추천할 수가 없습니다");
										}else{
											alert(friend+"는 존재 하지 않습니다.");
										}
										$("#friend").val("");
									}
								},
								error:function(er){
									alert("실패 원인:" + er);
								}
							});
						});
					});
				</script>
				<button id="regist_btn"type ="submit"class="btn-primary">회원가입</button>
				</div>
			</div>
		</div>
		</form>
		<script>
			$(function(){
				$("#regist_btn").click(function(){
					if($("#id").val()==""){
						alert("아이디를 입력해주세요!");
						return false;
					}
					if($("#pw1").val()==""){
						alert("비밀번호를 입력해주세요!");
						return false;
					}
					if($("#pw2").val()==""){
						alert("비밀번호를 다시 입력해주세요!");
						return false;
					}
					if(!($("#pw1").val()==$("#pw2").val())){
						alert("비밀번호가 일치하지 않습니다!");
						return false;
					}
					if($("#name").val()==""){
						alert("이름을 입력해주세요!");
						return false;
					}
					if($("#nick").val()==""){
						alert("닉네임을 입력해주세요!");
						return false;
					}
					if($("#phonecheck").val()==""){
						alert("핸드폰 번호를 입력해주세요!");
						return false;
					}
					if($("#email").val()==""){
						alert("이메일를 입력해주세요!");
						return false;
					}
					if($("#email-select").val()=="1"){
						alert("이메일 주소를 입력해주세요!");
						return false;
					}
					if($("#year").val()=="1"){
						alert("생년월일:연도를 선택해주세요!");
						return false;
					}
					if($("#month").val()=="1"){
						alert("생년월일:월을 입력해주세요!");
						return false;
					}
					if($("#day").val()=="1"){
						alert("생년월일:일을 입력해주세요!");
						return false;
					}
					var gender=$('input:radio[name="gender"]:checked').val();
					if(!(gender=="남"||gender=="여")){
						alert("성별을 선택해주세요");
						return false;
					}	
					var lifetime=$('input:radio[name="lifetime-accept"]:checked').val();
					if(!(lifetime=="o"||lifetime=="x")){
						alert("평생회원 여부를 선택해주세요");
						return false;
					}
					if(!($('input:checkbox[id="consent"]').is(":checked"))){
						alert("회원가입약관동의를 체크해주세요!");
						return false;
					}
					if(!($('input:checkbox[id="person_consent"]').is(":checked"))){
						alert("개인정보동의를 체크해주세요!");
						return false;
					}
					if($("#checked_id").val()==""){
						alert("아이디 중복체크 해주세여");
						return false;
					}
					if($("#checked_nick").val()==""){
						alert("닉네임 중복체크 해주세여");
						return false;
					}
					if($("#id").val() == $("#friend").val()){
						alert("자기 자신은 추천할 수가 없습니다");
						$("#friend").val("");
						return false;
					}
						
				});
					
			});
			$(this).ready(function(){
				$("#bottom").load('BottomFrame.jsp');
			});
		</script> 
		<div id="bottom">
		</div>
	</div>
</body>
</html>