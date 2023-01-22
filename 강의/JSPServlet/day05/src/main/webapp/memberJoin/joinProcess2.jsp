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
	request.setCharacterEncoding("utf-8");
%>
                                                       <%-- scope="session" 넣어주면 반복됨  --%>
<jsp:useBean id="member" class="com.member.beans.MemberBean"/>
<jsp:setProperty property="*" name="member"/>

<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<%
    //저장된 값을 유지하겠다.
	session.setAttribute("member", member);
	//response.sendRedirect("joinView2.jsp");
%>
<%
	ml.add(member);
%>

<a href = "joinView2.jsp">가입 정보 보기</a><br>	

</body>
</html>