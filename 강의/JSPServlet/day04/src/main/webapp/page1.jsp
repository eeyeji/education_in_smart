<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1페이지</h2>
<%-- 보안상 해주어야 하는 작업: url로 복붙해서 들어갈 수 없게 코드 짜주기! --%>
<%
	String userId = (String)session.getAttribute("userId");
	if((userId)== null){
		response.sendRedirect("loginForm.jsp");
	}
%>
<%=userId %>님 환영합니다. 
<a href = "logout.jsp">로그아웃</a>

<hr>
<a href = "page2.jsp">2페이지로 이동</a>

</body>
</html>