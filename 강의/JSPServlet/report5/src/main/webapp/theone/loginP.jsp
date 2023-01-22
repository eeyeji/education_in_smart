<%@page import="addr.beans.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//로그인 정보를 가져와서 member 객체에 저장된 값과 일치여부 판단
	//Member 객체 생성
	Member member = new Member();
	// 전송된 로그인 정보를 가져오기
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String manager = "관리자";
	String user = "일반회원";
	
	//id, pwd 맞는지 확인 
	String name = member.checkUser(id, pwd);
	//관리자 smart 1234
	if(id.equals("smart") && pwd.equals("1234")){
		session.setAttribute("name", manager);
		response.sendRedirect("addr_list_manager.jsp");
		//일반회원 test 12345
	} else if (id.equals("test") && pwd.equals("12345")){
		session.setAttribute("name", user);
		response.sendRedirect("addr_list_user.jsp");
	//그외 다시 로그인 화면
	} else response.sendRedirect("login.jsp");
%>


</body>
</html>