<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랭킹닭컴</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<script>
		alert("로그아웃 되셨습니다.");
		location.href ="MainPage.jsp";
	</script>
</body>
</html>
