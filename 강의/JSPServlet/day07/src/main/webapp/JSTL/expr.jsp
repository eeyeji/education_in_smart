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
	
	request.setCharacterEncoding("UTF-8");
	
	//데이터 받기
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int sum = num1 + num2;
%>
<%= num1 %> + <%=num2 %> = <%=sum %>
<br>
                       <!-- ${sum}?? 값 안들어가있음 -->
${param.num1} + ${param.num2} = ${param.num1+param.num2}
</body>
</html>