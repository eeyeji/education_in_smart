<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border>
<tr>

<% 	
	//방이 10개인 table을 화면에 출력하시오(for문 사용)
	for(int i = 1; i<=10; i++) {
		//방 만들기 <td></td>
		out.print("<td>"+i+"</td>");
	}
%>
</tr>
</table>

<%-- jsp 주석 --%>

<%-- 스크립트릿 --%>
<%-- <%=표현식%> => out.print(표현식)  --%>
<table border>
<tr>
<% for(int i = 1; i <= 10; i++){ %>
	<td><%=i %></td>
<%} %>
</tr>
</table>
</body>
</html>