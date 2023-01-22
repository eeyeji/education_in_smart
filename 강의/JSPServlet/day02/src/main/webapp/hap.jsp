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
	//1부터 100까지 합을 구하여 화면에 출력하기
	//출력문 1~100까지의 합: 5050
	int i;
	int sum=0;
	for(i=1; i<=100; i++){
		sum+=i;
	}
	out.print("1부터 100까지의 합: " + sum);
%>
</body>
</html>