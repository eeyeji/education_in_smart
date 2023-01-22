<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>DBCP 이용한 회원 정보 보기</h3><p>
${message}
	<table width='800' border='1'>
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>암호</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>권한(1:관리자, 2:일반회원)</th>
			<c:if test="${grade == 1}">
				<th>삭제</th>
			</c:if>
		</tr>
		
		<c:forEach var="user" items="${memberlist}">
			<tr>		
				<td>${user.name}</td>
				<td>${user.userid}</td>
				<td>${user.pwd}</td>
				<td>${user.email}</td>
				<td>${user.phone}</td>
				<td>${user.admin}</td>
				<c:if test="${grade == 1}">
					<td><input type="button" value="삭제" onclick="location.href='deleteMember?userid=${user.userid}&username=${user.name}'"></td>
				</c:if>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>