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
	//request 객체로부터 데이터 분리하기(가져오기)
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	//Member 객체 생성하고 데이터 저장-import 해줘야 오류 안남
	//heap영역에 id, pw, name객체가 생성된다
	//메소드를 이용해서 접근을 할 수 있는 구조가 완성됨
	Member member = new Member();
	member.setId(id);
	member.setPw(pw);
	member.setName(name);
	
	//member데이터를 session으로 유지하겠다
	//session.setAttribute("member", member);
	
	//joinProcess.jsp에서 처리되었지만 joinView.jsp에서 출력된 내용이 보여짐?
	//다른 페이지로 데이터 전송할 때 사용
	request.setAttribute("member", member); 
	RequestDispatcher dispt= request.getRequestDispatcher("joinView.jsp");
	dispt.forward(request, response);
%>
<!-- 결과 피드백 

<h3>회원가입 결과</h3>
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

-->
</body>
</html>