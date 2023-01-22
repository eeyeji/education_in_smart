<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>오늘의 날짜</title>
</head>
<body>

<%-- <h3>오늘의 날짜는?</h3> --%>
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	//캘린더 정의: 월은 0부터시작됨 -> 1월 = 0월 
	//따라서 따로 +1을 해주는 과정 필요
	int month = cal.get(Calendar.MONTH)+1;
	int day = cal.get(Calendar.DATE);
	
	out.print(year + "년 " + month + "월 " + day + "일");
%>

</body>
</html>