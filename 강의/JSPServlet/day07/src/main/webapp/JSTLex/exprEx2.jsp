<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- servlet은 루트 안에 있다 그 표시는 ../로 한다. -->
<form action="../expr" method="get">
<input type="text" name="num1" placeholder="숫자입력">
+
<input type="text" name="num2" placeholder="숫자입력">
<input type="submit" value="전송">
</form>
</body>
</html>