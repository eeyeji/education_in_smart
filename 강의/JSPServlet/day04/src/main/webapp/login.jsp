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
	//로그인 정보를 가져와서 사이트 사용자인지 확인("smart" "1234" 인지 확인)
	String userId = "smart";
	String userPw = "1234";
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//맞으면 page1로 이동 -> 세션 유지하면서 page2로 이동
	if(id.equals(userId) && pw.equals(userPw)){
		
		//세션정보로 userId 값을 지정한다.
		session.setAttribute("userId", userId);
		
		//세션 시작 시간-1970년 1월 1일부터 N분이 지났다고 나타내고 싶음
		//세션 머문 시간?
		long sessionStartTime = session.getCreationTime()/1000;
		
		session.setAttribute("sst", sessionStartTime);
		
		//세션 시작 시간-1970년 1월 1일부터 N분이 지났다고 나타내고 싶음
		System.out.println("세션 시작 시간: " + sessionStartTime + "초");
		
		response.sendRedirect("page1.jsp");
	}
	
	//틀리면 로그인페이지로 이동
	else{
		response.sendRedirect("loginForm.jsp");
	}
%>

</body>
</html>