<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	response.setCharacterEncoding("utf-8");
	String btn = request.getParameter("btn");
	
	if(btn.equals("로그인")){
		response.sendRedirect("login.jsp");
	}
	else{
		response.sendRedirect("addr_form.html");
	}
%>
</body>
</html>