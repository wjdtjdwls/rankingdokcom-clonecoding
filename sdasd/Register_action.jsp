<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sj.dao.*" %>
<%@page import="com.sj.dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
</head>
<body>
<% 
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	String nick=request.getParameter("nick");
	String p_number=request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
	String email=request.getParameter("e_mail")+"@"+request.getParameter("site"); 
	String birth = request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day");
	String gender=request.getParameter("gender");
	String lifetime_accept=request.getParameter("lifetime-accept");
	String consent=request.getParameter("accept1");
	String person_consent=request.getParameter("accept2");
	String email_consent=request.getParameter("accept3");
	String sms_consent=request.getParameter("accept4");
	String friends_id=request.getParameter("friends");
	if(lifetime_accept.equals("o")){
		lifetime_accept="동의";
	}else{
		lifetime_accept="동의안함";
	}
	if(consent.equals("consent")){
		consent="동의";
	}
	if(person_consent.equals("person-consent")){
		person_consent="동의";
	}
	try{
	if(email_consent.equals("email-consent")){
		email_consent="동의";
	}
	}catch(Exception e){
		email_consent="동의안함";
	}
	try{
	if(sms_consent.equals("sms-consent")){ 
		sms_consent="동의";
	}
	}catch(Exception e){
		sms_consent="동의안함";
	}
	MemberDao mDao =new MemberDao();
	if(mDao.memberjoin(new MemberDto(id,pw,name,nick,p_number,email,birth,gender,lifetime_accept,consent,person_consent,email_consent,sms_consent,friends_id))){
		mDao.pointplus(new pointplusDto(friends_id));
%>
		<script>
			alert("가입되셨습니다 성공되셨습니다.");
			location.href="MainPage.jsp";
		</script>
<% 	
	}else{
	
%>
	<script>
		alert("가입 실패 하셨습니다.");
		location.href="Register.jsp";
	</script>	
<%
	}
%>

</body>
</html>