<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 --> 
<% request.setCharacterEncoding("UTF-8"); %>  
<jsp:useBean id="mem" scope="page" class="member.DBBean"/> 

<%
	String mem_id = request.getParameter("mem_id");
	int idCheck = mem.confirmId(mem_id);  //idCheck 값은 1 아니면 -1을 넘겨받는다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck.jsp 페이지</title>
</head>
<body>
	<table border="0" align="center">
		<tr>
			<td align="center">
			<%
				if(idCheck == 1) {  //이미 사용중인 id이다.
			%>
			<br>
			<%= mem_id %>는 이미 존재하는 id입니다.&nbsp;<br><br>
			<input type="button" value="닫기" onclick="javascript:self.close();
			       opener.document.memberForm.mem_id.focus();">
			 <%
				}else{   //idCheck 값이 -1인 경우 
			 %> 
			 <br>
			<%= mem_id %>는 사용 가능한 id입니다.&nbsp;<br><br>
			<input type="button" value="닫기" onclick="javascript:self.close();
			       opener.document.memberForm.mem_passwd.focus();">
			 <%
				}
			 %>     
			</td>
		</tr>
	</table>
</body>
</html>





