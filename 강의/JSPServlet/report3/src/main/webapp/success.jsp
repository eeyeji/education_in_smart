<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Success</title>
</head>
<body>

<div style = "width : 600px; height : 500px; border : 1px solid gray; text-align : center">
<h2>첫번째 액션 페이지 입니다.</h2>
<%-- 
<%
	//request: 한번만 저장해줌
	//session: 서버가 열렸을동안 계속 저장해줌
	String name = (String)session.getAttribute("name"); 
%>
<%=name %>님 환영합니다.

<a href="login.html">로그아웃</a>
--%>

<%
	String name = (String)session.getAttribute("name");
	if((name)== null){
		response.sendRedirect("login.html");
	}
%>
<%=name %>님 환영합니다. 
<a href = "logout.jsp">로그아웃</a>



<p><img src="./images/짱구.png" style="width:400px; height:300px">
<hr>
<a href="secondAction.jsp">2 페이지로 이동</a>
<hr>
오늘 날짜: <jsp:include page="today.jsp"/>
</div>

</body>
</html>