<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>

<% 
	//로그아웃을 할 경우에는 반드시 세션을 무효화 시켜준다.
	session.invalidate();
	
	//이동할 페이지로 리다이렉트한다.
	response.sendRedirect("loginForm.jsp");
%> 

</body>
</html>