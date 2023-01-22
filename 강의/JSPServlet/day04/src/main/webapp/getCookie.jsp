<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>쿠키 정보 가져오기(조회)</h3>
<%
	//알아두기: 지정한 시간이 다 경과하면 session정보만 남게 됨.

	//1.request 객체 이용해서 정보 가져오기
	//                          배열타입
	//getCookies()가 배열 타입임으로 배열로 받아주어야 함
	Cookie [] cookies = request.getCookies();
	
	//쿠키갯수가 맞지 않을 때 확인 용
	System.out.print("쿠키 갯수: " + cookies.length);
	
	//2.쿠키 데이터 보여주기
	//쿠키 데이터는(name, value)쌍으로 존재함
	//id: smart name: 홍길동 age: 28 이런식으로 보여주기를 원함
	for(int i=0; i<cookies.length; i++){
		//쿠키의 name 정보 가져오기
		//                       리턴타입: String
		String name = cookies[i].getName();
		
		//쿠키의 value 정보 가져오기
		String value = cookies[i].getValue();
		out.print(name + ": " + value + "<br> ");
	}
	

%>

</body>
</html>