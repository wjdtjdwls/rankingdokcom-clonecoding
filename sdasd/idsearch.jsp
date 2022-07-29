<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<script src="js/jquery-3.6.0.min.js"></script>
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
		
		.idsearch-area{
			width:720px;
			margin:0 auto;
			padding:70px 150px 90px;
			margin-left:290px;
			margin-right:290px;
			margin-top:40px;
			background-color:white;
			box-sizing:border-box;
		}
		
		.idsearch-container {
			width:1300px;
			background-color:#f7f7f7;
			padding-top: 100px;
			padding-bottom:100px;
		}
		*{
			margin:0;
		}
		.name{
		    width: 420px;
		    /* margin-left: 59px; */
		    height: 50px;
		    margin-top: 10px;
		    margin-bottom: 10px;
		    box-sizing: border-box;
		}
		.emailname{
		    width: 420px;
		    /* margin-left: 59px; */
		    height: 50px;
		    margin-top: 10px;
		    margin-bottom: 10px;
		    box-sizing: border-box;
		}
		#phonefind #phone1{
			width: 135px;
		    height: 50px;
		    box-sizing: border-box;
		    padding: 0 36px 0 15px;
		    border: 1px solid #ccc;
		    margin-right:2px;
		}
		
		#phonefind #phone2{
			width: 136.5px;
	   		height: 50px;
	   		box-sizing:border-box;
	   		margin-right:2px;
		}
		#phonefind #phone3{
			width: 136.5px;
	   		height: 50px;
	   		box-sizing:border-box;
		}
		.btn-ok_disabled{
			width:420px;
			text-align:center;
			height:52px;
			background-color:#cccccc;
			border:1px solid #cccccc;
			color:white;
    		margin-top: 24px;
    		box-sizing:border-box;
    		cursor:default;
		}
		.btn-ok{
			width:420px;
			text-align:center;
			height:52px;
			background-color:#ff6001;
			border:1px solid #FF6001;
			color:white;
    		margin-top: 24px;
    		box-sizing:border-box;
    		cursor:pointer;
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
		#email-select{
			border:1px solid #ccc;
			padding: 0 0 0 15px;
		}#endimages{
			border:1px solid #eee;
			border-radius:4px;
		}
		#email-select option{
			display: block;
		    width: 100%;
		    height: 100%;
		    padding: 10px 17px 10px;
		    background: #fff;
		    box-sizing: border-box;
		    font-size: 14px;
		}
	</style>
	<script>
		$(this).ready(function(){
			$("#phonefind>input").attr("disabled",false);
			$("#phonefind>select").attr("disabled",false);
			$("#emailfind>input").attr("disabled",true);
			$("#emailfind>select").attr("disabled",true);
		});
		$(function(){
			$("#phonesearch").click(function(){
				$("#emailfind").hide();
				$("#phonefind").show();
				$("#phonefind>input").attr("disabled",false);
				$("#phonefind>select").attr("disabled",false);
				$("#emailfind>input").attr("disabled",true);
				$("#emailfind>select").attr("disabled",true);
				$("#btn").removeClass("btn-ok");
				$("#btn").attr("disabled",true);
				$("#emailfind>input").val("");
				$("#phone1").val("1");
				
			});
			$("#emailsearch").click(function(){
				$("#emailfind").show();
				$("#phonefind").hide();
				$("#emailfind>input").attr("disabled",false);
				$("#emailfind>select").attr("disabled",false);
				$("#phonefind>input").attr("disabled",true);
				$("#phonefind>select").attr("disabled",true);
				$("#phonefind").css("display","none");
				$("#btn").removeClass("btn-ok");
				$("#btn").attr("disabled",true);
				$("#phonefind>input").val("");
				$("#email-select").val("1");
				$("#idget").submit(function(){
					if($("#email-select").val()=="1" ){
						return false;
					}else{
						return true;
					}
				});
		
			});
				$("#phonefind  input").on("input",function(){
					if($(".name").val() && $("#phone2").val() && $("#phone3").val()){
						$("#btn").addClass("btn-ok");
						$("#btn").attr("disabled",false);
						$("#idget").submit(function(){
							if($(".name").val()==null || $("#phone2").val()==null || $("#phone3").val()==null){
								return false;
							}else{
								return true;
							}
						});
					}else{
						$("#btn").removeClass("btn-ok");
						$("#btn").attr("disabled",true);
					}
				});
				$("#emailfind  input").on("input",function(){
					if($(".emailname").val() && $("#email-text").val()){
						$("#btn").addClass("btn-ok");
						$("#btn").attr("disabled",false);
						$("#idget").submit(function(){
							if($(".emailname").val()==null || $("#email-text").val()==null){
								return false;
							}else{
								return true;
							}
						});
					}else{
						$("#btn").removeClass("btn-ok");
						$("#btn").attr("disabled",true);
					}
				});
		});
	</script>
</head>
<body>
	<div style="width:1300px;margin:0 auto;">
		<script>
			$(this).ready(function(){
				$("#head_inner").load('MainFrame.jsp');
			
			});
		</script>
		<div id=head_inner>
		</div>
		<form id="idget"action="idget.jsp">
			<div class="idsearch-container">
				<div class="idsearch-area">
				<h2 style=text-align:center;>아이디 찾기</h2>
					<div class="search">
						<input id="phonesearch"type="radio" checked name="search"value="phone"style=accent-color:#ff6001;width:20px;height:20px;>
						<span style=margin-right:288px;vertical-align:super;>휴대폰번호로 찾기</span><br/>
							<div id="phonefind">				
								<input type="text" name="name"class="name"placeholder="이름 2자 이상 입력"><br/>
								<select id ="phone1"name="phone1">
									<option value="010"selected>010</option>
									<option value="011">011</option>
									<option value="017">017</option>
								</select>
								<input type="text"id="phone2" name="phone2">
								<input type="text"id="phone3" name="phone3">
							</div>
							<div style="width:420px;margin-top:24px;padding-top:24px;border-top:1px solid #eee;">
							<input id="emailsearch"type="radio" name="search"value="email"style=accent-color:#ff6001;width:20px;height:20px;>
							<span style= margin-right:312px;vertical-align:super;>이메일로 찾기</span>
							</div>
							<div id="emailfind"style=display:none;><!-- style=display:none; -->
								<input type="text" name="name"class="emailname"placeholder="이름 2자 이상 입력"style= margin-left:0px;><br/>
								<input type="text" id="email-text"name="email" placeholder="이메일 주소" style=width:279px;height:50px;box-sizing:border-box;margin-right:2px;>
								<select id ="email-select"size="1"name="site" style=height:50px;width:135px;box-sizing:border-box;>
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
						</div>
						<button type="submit" id="btn"class="btn-ok_disabled">확인</button>
				
					<div id="endimages" style=margin-top:56px;margin-bottom:30px;>
						<img src="rankingimages/imgcsbnr01.png" style=width:418px;height:102.5px;box-sizing:border-box;>
						<img src="rankingimages/imgcsbnr02.png"style="width:418px;height:102.5px;box-sizing:border-box;border-top:1px solid #eee">
					</div>
				</div>
			</div>
		</form>
		<script>
			$(this).ready(function(){
				$("#bottom").load('BottomFrame.html');
			});
		</script>
		<div id="bottom">
		</div>
	</div>
</body>
</html>