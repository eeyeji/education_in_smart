<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>쿠키 정보 가져오기(조회)-초기화</h3>
<%
	//알아두기: 지정한 시간이 다 경과하면 session정보만 남게 됨.

	//1.request 객체 이용해서 정보 가져오기
	//                          배열타입
	//getCookies()가 배열 타입임으로 배열로 받아주어야 함
	Cookie [] cookies = request.getCookies();
	
	//쿠키갯수가 맞지 않을 때 확인 용
	System.out.print("쿠키 갯수: " + cookies.length);
	
	for(int i=0; i<cookies.length; i++){

		//초기화
		cookies[i].setMaxAge(0);
		
		//쿠키의 value 정보 가져오기
		response.addCookie(cookies[i]);
	}
	

%>

</body>
</html>