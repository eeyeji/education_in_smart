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
	//0.id pw 가져오기 
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//1.회원이면 성공페이지로 가기(succes.jsp) id: smart pw:1234
	if((id.equals("smart"))&&(pwd.equals("1234"))){
 
		String name = "홍길동";
		request.setAttribute("name", name);
		
		RequestDispatcher dispt = request.getRequestDispatcher("success2.jsp");
		dispt.forward(request, response);
	}
	else{
		response.sendRedirect("fail2.jsp");
	}

%>
</body>
</html>