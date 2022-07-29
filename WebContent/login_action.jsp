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
	MemberDao mDao =new MemberDao();
	String nick= mDao.nick(new MemberDto(id,pw));
	
	if(mDao.loginCheck(new MemberDto(id,pw))){
%>
		<script>
			alert("<%=nick%>님 안녕하세요! 로그인 성공되셨습니다.");
			location.href="MainPage.jsp";
		</script>
<% 	
			session.setAttribute("id", id);
	}else{
%>
	<script>
		alert("아이디 또는 비밀번호가 일치하지 않습니다.");
		location.href="login.jsp";
	</script>	
<%
}
%>
</body>
</html>