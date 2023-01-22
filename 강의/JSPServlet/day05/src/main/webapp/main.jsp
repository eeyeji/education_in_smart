<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<h3>메인 페이지입니다</h3>
<%
	String name = (String)session.getAttribute("name");
	if((name)== null){
		response.sendRedirect("loginForm.jsp");
	}
%>
<%=name %>님 환영합니다. 
<a href = "logout.jsp">로그아웃</a>

</body>
</html>