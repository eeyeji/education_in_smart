<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style = "width : 600px; height : 500px; border : 1px solid gray; text-align : center">
<h2>첫번째 페이지</h2>
내용이 여기에 들어갑니다.
<p><img src="./images/짱구.png" style="width:400px; height:300px">
<hr>
<a href="secondPage.jsp">2 페이지로 이동</a>
<hr>
<%-- include 지시자 --%>
오늘 날짜: <%@ include file="today.jsp"%>
</body>
</html>