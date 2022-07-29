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
		String pw1=request.getParameter("pw1");
		String pw2=request.getParameter("pw2");
		if(!(pw1.equals(pw2))){
	%>
	<script>
		alert("비밀번호를 다시 설정해주세요");
		history.back();
	</script>
	<%		
		}else{
			MemberDao mDao = new MemberDao();
			if(mDao.pwChange(new pwchangeDto(pw2,id))){
	%>
		<script>
			alert("변경되었습니다.");
			location.href="MainPage.jsp";
		</script>
	<% 		
			}
		}
	%>
</body>
</html>