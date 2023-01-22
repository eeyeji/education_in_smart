<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>loginProcess</title>
</head>
<body>

<%
	//0.id pw 가져오기 
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//전송 데이터가 없을 경우 확인
	if((id != null)&&(pwd != null)){
		//1.회원이면 성공페이지로 가기(succes.jsp) id: smart pw:1234
		if((id.equals("smart"))&&(pwd.equals("1234"))){
	 
			String name = "홍길동";
			
			//request: 한번만 저장해줌
			//session: 서버가 열렸을동안 계속 저장해줌
			session.setAttribute("name", name);
			
			RequestDispatcher dispt = request.getRequestDispatcher("success.jsp");
			dispt.forward(request, response);
		}
		else{
			response.sendRedirect("fail.jsp");
		}
	}
	else{
		response.sendRedirect("login.html");
	}

%>

</body>
</html>