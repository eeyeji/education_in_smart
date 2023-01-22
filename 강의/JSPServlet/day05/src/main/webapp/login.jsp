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

<%
	//로그인 정보를 가져와서 member 객체에 저장된 값과 일치 여부 판단
	//Member 객체 생성
	Member member = new Member();

	//데이터 잘 연동되었는지 확인
	//member 값이 있는지 콘솔창에서 확인
	//System.out.println("id: " + member.getId());
	//System.out.println("pw: " + member.getPw());
	//System.out.println("name: " + member.getName());
	
	//전송된 로그인 정보를 가져오기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//전송 데이터가 없을 경우 확인
	if((id != null)&&(pw != null)){
		//id, pw 맞는지 확인-Member()호출하기
		String name = member.checkUser(id, pw);
		//name값 있는지 콘솔창에서 확인
		//System.out.println("name: " + name);
		if(name != null){
			session.setAttribute("name", name);
			response.sendRedirect("main.jsp");
		}
		else{
			response.sendRedirect("loginForm.jsp");
		}
	}
	else{
		response.sendRedirect("loginForm.jsp");
	}
%>

</body>
</html>