<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="addr.beans.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="addr.beans.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>

<jsp:useBean id="am" class="addr.beans.AddrManager" scope="application"/>
<%
	am.add(addr);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add.jsp</title>
</head>
<body>
<div align="center">
<H2>등록내용</H2>
이름 : <jsp:getProperty property="username" name="addr"/><P>
전화번호 : <%=addr.getTel() %><P>
이메일 : <%=addr.getEmail() %> <P>
성별 : <%=addr.getGender() %> <p>
<% if(addr.getGrade().equals("1")){ %>
관리자입니다. <%addr.setGrade("관리자");%> <br>
<a href="addr_list_manager.jsp">목록 보기</a>
<%}else {%> 회원입니다. <% addr.setGrade("회원");%> <br>
<a href="addr_list_user.jsp">목록 보기</a> <%}%>
<HR>
</div>
</body>
</html>










