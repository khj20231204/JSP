<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("id");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제 폼</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- 외부 자바스크립트 파일 불러오기 -->
<script src="member.js"></script>

</head>
<body>

<form method="post" action="delete.jsp"> 
<input type="hidden" name="id" value="<%=id%>">
<table border=1 width=450 align="center">
	<caption>회원 탈퇴</caption>
	<tr><td>비밀번호</td>
		<td><input type=password id="passwd" name="passwd">
		</td>
	</tr>
	<tr><td colspan=2 align=center>
			<input type=submit value="회원탈퇴">
			<input type=reset value="취소">
		</td>
	</tr>		
</table>
</form>

</body>
</html>