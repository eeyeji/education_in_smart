<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="addr.beans.*"%>

<!-- 인코딩: utf-8 한글 안깨지게 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<!-- 기본문법?은 core에 들어있다? -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
<!--  이름 : <jsp:getProperty property="username" name="addr"/><P> -->
이름: ${param.username}<P>
전화번호 : ${param.tel }<P>
이메일 : ${param.email } <P>
성별 : ${param.gender }
	
<HR>
<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>










