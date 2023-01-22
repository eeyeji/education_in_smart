
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
<!--  request 객체에 저장된 값을 getProperty 액션 태그 이용하여 가져오기 -->
<jsp:useBean id="member" class="beans.Member" scope="request"/>
아이디: <jsp:getProperty property="id" name="member"/>
비밀번호: <jsp:getProperty property="pw" name="member"/>
이름: <jsp:getProperty property="name" name="member"/>



</body>
</html>