<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sj.dao.*" %>
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
			border-radius:2px;
		}
		li {
			list-style: none;
		}

		
		.search{
			text-align:center;
		}
		
		.pwsearch-area{
			width: 720px;
		    margin: 0 auto;
		    padding: 70px 150px 90px;
		    /* margin-left: 290px; */
		    /* margin-right: 290px; */
		    margin-top: 40px;
		    background-color: white;
		    box-sizing: border-box;
		}
		.pwsearch-container {
			width:1300px;
			background-color:#f7f7f7;
			padding-top: 100px;
			padding-bottom:100px;
		}
		
		.name{
			padding: 3px 15px;
		    width: 420px;
		    /* margin-left: 59px; */
		    height: 50px;
		    margin-bottom: 8px;
		    box-sizing: border-box;
		    font-size: 13px;
		    border-radius: 2px;
		}
		.emailname{
			padding: 3px 15px;
		    width: 420px;
		    /* margin-left: 59px; */
		    height: 50px;
		    margin-bottom: 8px;
		    box-sizing: border-box;
		    font-size: 13px;
		    border-radius: 2px;
		}
		.number{
			padding: 3px 15px;
		    width: 420px;
		    /* margin-left: 59px; */
		    height: 50px;
		    margin-bottom: 8px;
		    box-sizing: border-box;
		    font-size: 13px;
		    border-radius: 2px;
		}
		.id{
			padding: 3px 15px;
		    width: 420px;
		    /* margin-left: 59px; */
		    height: 50px;
		    margin-bottom: 8px;
		    box-sizing: border-box;
		    font-size: 13px;
		    border-radius: 2px;
		}
		#find{
			padding-top:20px;
		}
		#phonefind #phone1{
			width: 135px;
	   		height: 50px;
	   		box-sizing:border-box;
	   		margin-right:2px;
	   		padding:3px 15px;
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
			height:50px;
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
			height:50px;
			background-color:#3a4c67;
			border:1px solid #3a4c67;
			color:white;
    		margin-top: 24px;
    		box-sizing:border-box;
    		cursor:pointer;
		}
		.btn-okorange{
			width:420px;
			text-align:center;
			height:50px;
			background-color:#ff6001;
			border:1px solid #ff6001;
			color:white;
    		margin-top: 24px;
    		box-sizing:border-box;
    		cursor:pointer;
		}
		#btn-replace{
			width:420px;
			text-align:center;
			height:50px;
			background-color:#cccccc;
			border:1px solid #cccccc;
			color:white;
			box-sizing:border-box;
		}
		
		#btnimages{
			display: inline-block;
    		content: '';
    		border:0px solid #f2f2f2;
    		width: 18px;
    		height: 18px;
    		background: url(rankingimages/ico_btns.png) 0 0;
    		vertical-align: top;
    		cursor: pointer;
		}
		}#endimages{
			border:1px solid #eee;
			border-radius:4px;
		}
	</style>
				
			
	<script>

		$(this).ready(function(){
			$("#phonefind>input").attr("disabled",false);
			$("#phonecontain>input").attr("disabled",false);
			$("#phonecontain>select").attr("disabled",false);
			$("#emailfind>input").attr("disabled",true);
			$("#emailcontain>input").attr("disabled",true);
			$("#emailcontain>select").attr("disabled",true);
			$("#btn-replace1").attr("disabled",true);
			$("#btn-replace2").attr("disabled",true);
		});
		$(function(){
			$("#phonesearch").click(function(){
				$("#emailfind").hide();
				$("#phonefind").show();
				$("#btn2").removeClass("btn-ok");
				$("#btn2").attr("disabled",true);
				$("#btn-replace2").removeClass("btn-okorange");
				$("#btn-replace2").attr("disabled",true);
				$("#phonefind>input").attr("disabled",false);
				$("#phonecontain>input").attr("disabled",false);
				$("#phonecontain>select").attr("disabled",false);
				$("#emailfind>input").attr("disabled",true);
				$("#emailcontain>input").attr("disabled",true);
				$("#emailcontain>select").attr("disabled",true);
				$("#emailfind > input").val("");
				$("#emailcontain > input").val("");
				$("#phone1").val("1");
			
			});
			$("#emailsearch").click(function(){
				$("#emailfind").show();
				$("#phonefind").hide();
				$("#btn1").removeClass("btn-ok");
				$("#btn1").attr("disabled",true);
				$("#btn-replace1").removeClass("btn-okorange");
				$("#btn-replace1").attr("disabled",true);
				$("#emailfind>input").attr("disabled",false);
				$("#emailcontain>input").attr("disabled",false);
				$("#emailcontain>select").attr("disabled",false);
				$("#phonefind>input").attr("disabled",true);
				$("#phonecontain>input").attr("disabled",true);
				$("#phonecontain>select").attr("disabled",true);
				$("#phonefind > input").val("");
				$("#phonecontain > input").val("");
				$("#email-select").val("1");
				$("#pwchange").submit(function(){
					if($("#email-select").val()=="1" ){
						return false;
					}else{
						return true;
					}
				});
		
			});
			$("#phonefind input").on("input",function(){
				if($("#phonefind .id").val() && $(".name").val() && $("#phonecontain #phone2").val() && $("#phonecontain #phone3").val()){
					$("#btn1").addClass("btn-ok");
					$("#btn1").attr("disabled",false);
					$("#pwchange").submit(function(){
						if($("#phonefind .id").val()==null || $(".name").val()==null && $("#phonecontain #phone2").val()==null && $("#phonecontain #phone3").val()==null){
							return false;
						}else{
							return true;
						}
					});
				}else{
					$("#btn1").removeClass("btn-ok");
					$("#btn1").attr("disabled",true);
				}
			});
			$("#emailfind input").on("input",function(){
				if($("#emailfind .id").val() && $(".emailname").val() && $("#emailcontain #email-text").val()){
					$("#btn2").addClass("btn-ok");
					$("#btn2").attr("disabled",false);
					$("#pwchange").submit(function(){
						if($("#emailfind .id").val()==null || $(".emailname").val()==null || $("#emailcontain #email-text").val()==null){
							return false;
						}else{
							return true;
						}
					});
				}else{
					$("#btn2").removeClass("btn-ok");
					$("#btn2").attr("disabled",true);
				}
			});
			var certi = null; 
			$("#btn1").click(function(){
				certi = Math.round((Math.random()*9000)+1000); 
				alert(certi);
			});
			
			$("#phonefind .number").on("input", function(){
					if($(this).val()==certi){
						$("#btn-replace1").addClass("btn-okorange");
						$("#btn-replace1").attr("disabled",false);
						$("#pwchange").submit(function(){
							return true;
						});
					}else{
						$("#btn-replace1").removeClass("btn-okorange");
						$("#btn-replace1").attr("disabled",true);
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
		<form id="pwchange"action="pwChange.jsp"target="pwcertiget">
			<div class="pwsearch-container">
				<div class="pwsearch-area">
					<h2 style="text-align:center;font-size:32px;margin:0 auto 40px;font-weight:500;">비밀번호 찾기</h2>
						<div class="search">
							<input id="phonesearch"type="radio"checked name="search"value="phone"style=accent-color:#ff6001;width:20px;height:20px;cursor:pointer;>
							<span style=margin-right:288px;vertical-align:super;>휴대폰번호로 찾기</span><br/>
							<div id="phonefind"style=padding-top:20px;>				
								<input type="text" name="id"class="id"placeholder="아이디"><br/>
								<input type="text" name="name"class="name"placeholder="이름 2자 이상 입력"><br/>
								<div id="phonecontain"style=margin-bottom:8px;>
								<select id ="phone1"name="phone1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
								</select>
								<input type="text"id="phone2"name="phone2">
								<input type="text"id="phone3" name="phone3">
								</div>
								<input type="text" class="number"placeholder="인증번호 입력">
								<div style=margin-top:40px;>
									<input type="button" id="btn1" class="btn-ok_disabled"value="인증번호 받기"><br/>
									<button  id="btn-replace1"class="btn-ok_disabled"style=margin-top:10px;>비밀번호 재설정</button>
								</div>
							</div>
							<div style="margin-top:24px;padding-top:24px;border-top:1px solid #eee;">
								<input id="emailsearch"type="radio" name="search"value="email"style=accent-color:#ff6001;width:20px;height:20px;cursor:pointer;>
								<span style= margin-right:312px;vertical-align:super;>이메일로 찾기</span>
							</div>
							<div id="emailfind"style=display:none;padding-top:20px;><!--style=display:none;  -->
								<input type="text" name="id" class="id"placeholder="아이디 "style= margin-left:0px;><br/>
								<input type="text" name="name"class="emailname"placeholder="이름 2자 이상 입력"style= margin-left:0px;margin-bottom:0px;><br/>
								<div id="emailcontain"style=margin-top:8px;> 
									<input type="text" name="email"id="email-text"placeholder="이메일 주소" style=width:279px;height:50px;box-sizing:border-box;>
									<select name="site"id ="email-select"size="1" style=height:50px;width:135px;box-sizing:border-box;>
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
									<input type="text" class="number"placeholder="인증번호 입력"style=margin-left:0px;margin-top:8px;margin-bottom:0px;>
									<div style=margin-top:40px;>
										<input type="button" id="btn2" class="btn-ok_disabled"value="인증번호 받기"><br/>
										<button  id="btn-replace2"class="btn-ok_disabled" style=margin-top:10px;>비밀번호 재설정</button>
									</div>
								</div>
							</div>
							<script>
								var result;
								$("#btn2").click(function(){
									var email = $("#email-text").val();
									var site = $("#email-select").val();
									$.ajax({
										url: "EmailServlet", // 목적지
					                    type: "Get", // HTTP Method
					                    data: {"email":email,"site":site}, // 전송 데이터
					                    dataType: 'json', // 전송 데이터 형식
					                    success: function(d){ // 성공 시 실행
					                    	alert("인증번호가 발송되었습니다!");
						                	result = d.certi;
					                    },
					                    error:function(er){ //실패 시 실행
					                        alert("실패 원인 : " + er);
					                    }
									}); 
								});
								$(function(){
									 $("#emailfind .number").on("input", function(){
				                    	if($(this).val()== result){
			        						$("#btn-replace2").addClass("btn-okorange");
			        						$("#btn-replace2").attr("disabled",false);
			        						$("#pwchange").submit(function(){
			        							return true;
			        						});
			        					}else{
			        						$("#btn-replace2").removeClass("btn-okorange");
			        						$("#btn-replace2").attr("disabled",true);
			        					}
	                       	 		});  
								});
							</script>
						<div id="endimages" style="margin-top:56px;margin-bottom:30px;border:1px solid #eee;">
							<img src="rankingimages/imgcsbnr01.png" style=width:418px;height:102.5px;box-sizing:border-box;>
							<img src="rankingimages/imgcsbnr02.png"style="width:418px;height:102.5px;box-sizing:border-box;border-top:1px solid #eee;">
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
		</form>
	</div>
</body>
</html>