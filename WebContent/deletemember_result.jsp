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
		String id=request.getParameter("id");
		session.invalidate();
	%>
	<script>
		alert("<%=id%>"+"님 감사합니다!");
		location.href="MainPage.jsp";
	</script>
</body>
</html>