<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 에러페이지 정의 --%>
<%-- 페이지 에러 발생시 "errorPage.jsp"로 가라 --%>    
<%@ page errorPage = "errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>0으로 나눌 경우는?</h3>
<%=2/0%>

<%--정상적일 때는 정상페이지 출력 --%>
<%-- <%=2/1 %> --%>
</body>
</html>