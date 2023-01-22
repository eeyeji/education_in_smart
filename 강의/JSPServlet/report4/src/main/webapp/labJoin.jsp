<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("euc-kr");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwcheck = request.getParameter("pwcheck");
	String gender = request.getParameter("gender");
	String blood = request.getParameter("blood");
	String birth = request.getParameter("birth");
	String[] hobby = request.getParameterValues("hobby");
	String color = request.getParameter("color");
	String writes = request.getParameter("writes");

	out.print("id: "+id+"<br>");
	out.print("pw: "+pw+"<br>");
	out.print("rpw: " + pwcheck + "<br>");
	out.print("성별: "+gender+"<br>");
	out.print("blood: "+blood+"<br>");
	out.print("birth: "+birth+"<br>");
	
	out.print("취미: ");
	for(String h : hobby) {
		out.print(h + " ");		
	}
	out.print("<br>");
	
	out.print("color: "+color+"<br>");	
	out.print("<div style='width:100px;height:100px;background:"+color+";'></div>");
	out.print("message: "+writes);

%>

</body>
</html>