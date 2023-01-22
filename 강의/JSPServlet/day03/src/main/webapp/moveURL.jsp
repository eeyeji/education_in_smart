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
	//1.데이터 받기
	String url = request.getParameter("url");
	//2.데이터 처리
	if(url.equals("네이버")){
	 response.sendRedirect("http://www.naver.com");
	}
	else if(url.equals("다음")){
		response.sendRedirect("http://www.daum.net");
	}
	else{
		response.sendRedirect("http://www.google.com");
	}

%>
</body>
</html>