<%@page import="beans.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>회원 가입 결과</h3>
<%
	//                      session
	Member member = (Member)request.getAttribute("member");
%>

<table style=text-align:center;>
<tr>
<td>아이디</td><td><%=member.getId() %></td>
</tr>
<tr>
<td>비밀번호</td><td><%=member.getPw() %></td>
</tr>
<tr>
<td>이 름</td><td><%=member.getName() %></td>
</tr>
</table>

</body>
</html>