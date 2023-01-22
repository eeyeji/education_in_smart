<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery animate() 함수 활용 예제</title>
<!-- 웹 문서에 jQuery를 적용하려면 아래 소스를 추가시킨다.!! -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('button').click(function(){
			$('div').animate({height:300},"slow");
			$('div').animate({width:300},"slow");
			$('div').animate({height:100},"slow");
			$('div').animate({width:100},"slow");
		});
	});
</script>
</head>
<body>
	<button>애니메이션 시작하기</button>
	<br><br>
	<div style="background:greenyellow; width:100px; height:100px; 
	     position:relative"></div>
</body>
</html>