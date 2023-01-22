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
		//Web특성은 요청->응답 후 연결 해제되기 때문에 원하는 값을 지정?해준 url을 넣어준다?
		//하지만 이럴 경우 id 노출됨 
		//이러한 경우를 방지하기 위해 포워드 방식 사용
		//1. sendRedirect()이용한 페이지 이동
		//response.sendRedirect("success.jsp?id="+id);
		//response.sendRedirect("http://localhost:8080/day03/success.jsp");
		
		//forward() 방식 이용한 페이지 이동
		//RequestDispatcher 객체(인스턴스) 생성
		//forward() 메소드 호출
		
		//request.setAttribute 사용시 
		//id가 아닌 이름으로 넘겨줄 수 있다. 
		String name = "홍길동";
		request.setAttribute("name", name);
		
		RequestDispatcher dispt = request.getRequestDispatcher("success.jsp");
		//request객체 공유하기 때문에 success.jsp에서 자동으로 연동? 가능
		dispt.forward(request, response);
	}
	else{
		response.sendRedirect("fail.jsp");
		//response.sendRedirect("http://localhost:8080/day03/fail.jsp");
	}
	/*
	if(!id.equals("smart")){
		response.sendRedirect("http://localhost:8080/day03/fail.jsp");
	}
	else if(!pwd.equals("1234")){
		response.sendRedirect("http://localhost:8080/day03/fail.jsp");
	}
	else{
		response.sendRedirect("http://localhost:8080/day03/success.jsp");
	}
	*/
	//2.회원이 아니면 로그인 페이지로 안내(fail.jsp)
%>
</body>
</html>