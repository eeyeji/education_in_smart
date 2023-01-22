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
	//request 객체로부터 데이터 분리하기(가져오기)
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
%>

	<!--  userBean 액션태그를 이용한 객체 생성과 데이터 저장 -> 액션태그는 XML표준에 맞추어 작성됨 -->
	<jsp:useBean id="member" class="beans.Member" scope="request"/>
	<!-- 받아오는 값이 다 setProperty에서 받아오면 *사용해서 전체를 다 받아올 수 있다. -->
	<jsp:setProperty property="*" name="member"/>
	<!--  
	<jsp:setProperty property="id" name="member"/>
	<jsp:setProperty property="pw" name="member"/>
	<jsp:setProperty property="name" name="member"/>
	-->
<%
	 
	RequestDispatcher dispt= request.getRequestDispatcher("joinView2.jsp");
	dispt.forward(request, response);
%>	

</body>
</html>