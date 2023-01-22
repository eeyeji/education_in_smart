<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery의 slideToggle() 함수 적용 예제</title>
<style>
	div.panel, p.flip { 
		width:560px;
		margin:auto;
		padding:5px;
		background:yellow;
		border:solid 1px blue;
	}
</style>
<!-- 웹 문서에 jQuery를 적용하려면 아래 소스를 추가시킨다.!! -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
	$(document).ready(function(){    //콜백 함수
		$('.flip').click(function(){
			$('.panel').slideToggle("fast"); //normal, slow, fast 중 선택 가능
		});
	});
</script>
</head>
<body>
	<div class="panel">
		<p>이번 실습은 sildeToggle() 함수를 사용하여</p>
		<p>선택한 엘리먼트 토글(slide-up & slide-down) 시키는 작업입니다.</p>
	</div>
	<p class="flip">여기를 클릭하세요!!</p>
</body>
</html>