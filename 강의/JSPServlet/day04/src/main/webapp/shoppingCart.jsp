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
	//가져오기 데이터 인코딩 방식 지정
	request.setCharacterEncoding("utf-8");

	//쇼핑 목록 쿠키 생성하고 저장하기
	//1.데이터 가져오기(복수개일 경우: getParameterValues())
	String [] books = request.getParameterValues("book");
	
	//2.쿠키 생성
	Cookie [] cookies = new Cookie[books.length];
	for(int i=0; i<books.length; i++){
		//(name, value)-> name1, name2, name3,,,
		//                book0, book1, book2,,,
		//                        일련번호, 책이름
		cookies[i] = new Cookie("book"+i, books[i]);
		
		//유효기간 설정
		cookies[i].setMaxAge(60*60);
		
		//response 객체에 담기
		response.addCookie(cookies[i]);
	}
	
	//장바구니 목록 전송하기
	response.sendRedirect("shoppingBook.jsp");
%>

</body>
</html>