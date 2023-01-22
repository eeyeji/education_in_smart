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
 	String roomname = request.getParameter("roomname");
	int roomCnt = Integer.parseInt(request.getParameter("roomCnt"));
	
	//2. 로직 작성->요청한대로 테이블 만들기

	out.print(roomname);
	out.print("<table border>");
	out.print("<tr>");
	for(int i = 1; i<=roomCnt; i++) {
		//방 만들기 <td></td>
		out.print("<td>"+i+"</td>");
	}
	out.print("</tr>");
	out.print("</table>");

%>
</body>
</html>