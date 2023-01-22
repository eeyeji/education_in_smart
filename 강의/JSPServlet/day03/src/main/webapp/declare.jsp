<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>선언문 연습</h3>
<%!
	//멤버 변수 선언
	//서비스메소드만 호출이 되니깐? 새로고침하면 globalCnt만 1씩 증가함
	int globalCnt = 0;

%>
<h3>스크립트릿 코드 </h3>
<%
	//새로고침하면 localCnt는 초기화되서 처음 증가한 값인 1이 그대로 유지
	int localCnt = 0;
	out.print("<br>globalCnt: " + ++globalCnt);
	out.print("<br>localCnt: " + ++localCnt);
%>
</body>
</html>