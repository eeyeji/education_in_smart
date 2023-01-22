<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:300px; height:200px;border:1px solid gray; text-align:center">
<%-- Web특성은 요청->응답 후 연결 해제되기 때문에 원하는 값을 지정?해준 url을 넣어준다?
	하지만 이럴 경우 id 노출 
	이러한 경우를 방지하기 위해 포워드 방식 사용--%>
<%-- <%String name = request.getParameter("id");%> --%>

<%-- forward방식 과정에서 request.setAttribute 사용시 --%>
<%-- id가 아닌 이름으로 넘겨줄 수 있다. --%>
<%String name = (String)request.getAttribute("name"); %>

<%=name %>님 환영합니다.<br>
<a href="login.html">로그아웃</a>
</div>
</body>
</html>