<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="addr.beans.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	response.setCharacterEncoding("utf-8");
	//로그인 정보를 가져와서 member 객체에 저장된 값과 일치여부 판단
	//Member 객체 생성
	Member member = new Member();
	// 전송된 로그인 정보를 가져오기
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String btn = request.getParameter("btn");
	String manager = "관리자";
	String user = "일반회원";
	
	if(btn.equals("회원가입")){
		response.sendRedirect("addr_form.html");
	}
	else{
		//전송 데이터가 없을 경우 확인
		if((id != null)&&(pwd != null)){
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
			} else {
				response.sendRedirect("main.jsp");
			}
		}
	}



%>
</body>
</html>