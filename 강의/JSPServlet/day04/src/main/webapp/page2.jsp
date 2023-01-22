<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>2페이지</h2>
<%
	if(session.getAttribute("userId")== null){
		response.sendRedirect("loginForm.jsp");
	}
%>

<%=session.getAttribute("userId") %>님 환영합니다. 
<a href = "logout.jsp">로그아웃</a>
<br>

세션 시작 시간: <%=session.getAttribute("sst") %>분
<br>
request 세션 시간 다시 호출: 
<%
	long presentTime = session.getLastAccessedTime()/1000;
	
	System.out.print("현재 시간: " + presentTime + "초");

	//세션 유지된 시간: 절대값 abs(세션 시작 시간 - 현재 시간)
	long stayTime = (long)session.getAttribute("sst")-presentTime;
	out.print("로그인 이후 사이트에 머문 시간: " + stayTime + "초");

	int inactive = session.getMaxInactiveInterval()/1000;
	boolean b_new = session.isNew();

%>
웹사이트에 머문 시간: <%=stayTime %>초<br>
세션 유효시간: <%=inactive %>초 <br>
<%
	if(b_new)
		out.print("새로운 세션입니다.");
	else out.print("기존 세션입니다.");
%>

<hr>
<a href = "page1.jsp">1페이지로 이동</a>


</body>
</html>