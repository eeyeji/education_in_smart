<%@page import="addr.beans.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="addr.beans.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="addr.beans.AddrManager" scope="application"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
<div align=center>
<H2>회원 목록</H2>
<HR>
<a href="addr_form.html">주소 추가</a><P>
<table border=1 width=500>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>관리자</td></tr>
<%
	for(AddrBean ab : am.getAddrList()) {
%>
	<tr>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getGender() %></td>
	<td><%=ab.getGrade() %></td></tr>
<%	
	}
%>
</table>
</div>
</body>
</html>


