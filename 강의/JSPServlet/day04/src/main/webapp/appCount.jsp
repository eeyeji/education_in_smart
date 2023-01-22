<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>사이트 방문자 수 출력하기: application 객체를 이용한다.</h3>
<%
	//application 객체 정보를 얻어서 값이 존재하는지를 확인
	Integer visitCnt = (Integer)application.getAttribute("visitCnt");
	
	//존재하지 않을 경우에는 방문자 수를 저장할 변수를 생성
	if(visitCnt == null){
		//                                  최초방문자
		application.setAttribute("visitCnt", 1);
	}
	//존재할 경우 방문자 수 증가
	else{
		//새로운 session인 경우에만 증가시켜주기 - session.isNew()
		if(session.isNew()){
			visitCnt++;
		
		//application 객체에 저장
		application.setAttribute("visitCnt", visitCnt);
		}
	}

%>
방문자 수: <%= application.getAttribute("visitCnt") %>

</body>
</html>