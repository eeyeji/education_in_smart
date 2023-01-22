<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 인코딩: utf-8 한글 안깨지게 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<!-- 기본문법?은 core에 들어있다? -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	td {text-align:center;}
</style>
<body>
<fieldset>
<legend>사용자 정보</legend>
<table style="width:400px; border:1px solid gray;">
<tr><th>이름</th><th>나이</th><th>성별</th><th>좋아하는 음식</th><th>관심분야</th></tr>
<tr>
	
	<td><%=request.getParameter("name") %></td>
	<td>${param.age }</td>
	<td>${param.gender }</td>
	<td>${param.food }</td>
	<td><c:forEach var = "interest" items="${paramValues.interest }">
		${interest }<br>
	</c:forEach> 
	</td>
</tr>
</table>
</fieldset>

</body>
</html>