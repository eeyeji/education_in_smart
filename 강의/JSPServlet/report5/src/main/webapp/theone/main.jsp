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
Integer visitCnt = (Integer)application.getAttribute("visitCnt");

	if (visitCnt == null){
		application.setAttribute("visitCnt", 1);
	}else{
		visitCnt++;
		System.out.println("visitCnt " + visitCnt);
		application.setAttribute("visitCnt", visitCnt);
	}
%>
당신은 <%= application.getAttribute("visitCnt") %>번째 방문자입니다.
<form action="loginProcess.jsp">
<input type="submit" name="btn" value="로그인">
<input type="submit" name="btn" value="회원가입">
</form>



</body>
</html>