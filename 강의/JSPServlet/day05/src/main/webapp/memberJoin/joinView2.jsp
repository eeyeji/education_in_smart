<%@page import="com.member.beans.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입정보보기</title>
</head>
<body>

<h3>회원 가입 결과</h3>
<!--  request 객체에 저장된 값을 getProperty 액션 태그 이용하여 가져오기 -->
<jsp:useBean id="member" class="com.member.beans.MemberBean" scope="session"/>
<fieldset>
<legend>가입 정보</legend>
<table style=text-align:center;>
<tr>
	<td>아이디</td><td><jsp:getProperty property="id" name="member"/></td>
</tr>
<tr>
	<td>비밀번호</td><td><jsp:getProperty property="pw" name="member"/></td>
</tr>
<tr>
	<td>이름</td><td> <jsp:getProperty property="name" name="member"/></td>
</tr>
</table>
</fieldset>

<h3>회원리스트</h3>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<fieldset>
<legend>가입리스트</legend>
<table style=text-align:center;>
<tr><th>아이디</th><th>비밀번호</th><th>이름</th></tr>

	<%	
	    //ArrayList에서는 size()가 length()임.
	    //<MeberBean>은 타입의 일종
		ArrayList <MemberBean> mms = ml.getList();
		for(int i =0; i<mms.size(); i++){
			MemberBean m = mms.get(i);
	%>
<tr>
		<td><%= m.getId()%></td>
		<td><%= m.getPw()%></td>
		<td><%= m.getName()%></td>
	<%} %>
</tr>
</table>
</fieldset>

</body>
</html>