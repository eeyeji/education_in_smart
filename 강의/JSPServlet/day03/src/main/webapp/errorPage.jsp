<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 에러페이지 지정 --%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= "잠시 기다려 주십시오." %>
<%= "문의: 010-1234-5678" %>
<%-- <%= exception.getMessage()%> --%>
<%-- 위 주석 실행 결과값: by zero --%>
</body>
</html>