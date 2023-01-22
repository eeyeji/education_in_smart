<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>쿠키 생성 과정</h3>
<%
	//1.쿠키 생성 id, name, age
	//    객체 생성              name, value
	
	//쿠키 정보가 여러 개일 경우 배열로 생성하여 인덱스 사용
	Cookie [] cookie = new Cookie[3];
	String [] name = {"id", "name", "age"};
	String [] value = {"smart", "홍길동", "28"};
	
	//쿠키 생성하면서 배열에 저장
	for(int i=0; i<cookie.length; i++){
		//(name, value 쌍으로 쿠키 생성
		cookie[i] = new Cookie(name[0], value[0]);
		
		//쿠키 정보 유지 기간 설정(30분)
		cookie[i].setMaxAge(60*30);
		
		//클라이언트에 쿠키 전송(response 객체에 담기)
		response.addCookie(cookie[i]);
	}
	
%>

</body>
</html>