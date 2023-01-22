<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String menu = request.getParameter("menu");
	String btn = request.getParameter("btn");
	if(btn.equals("랜덤선택")){
		String [] lunch = {"김치볶음밥", "김밥앤라면", "짜장면", "알밥", "된장찌개", "파스타"};
		Random ran = new Random();
		int index = ran.nextInt(lunch.length); //0~length-1 
		out.print("오늘의 추천 메뉴는"+lunch[index]);
	}
	else{ 
		out.print("오늘의 추천 메뉴는 "+menu+"입니다.");
	
	}
%>

</body>
</html>

