<%@ page contentType="text/html; charset=utf-8" %>

<html>
	<head>
		<title>쿠키를 생성하는 예제</title>
	</head>

<%
   String cookieName = "id";
   Cookie cookie = new Cookie(cookieName, "totoro");
   cookie.setMaxAge(120); 			// 쿠키 유지 시간 : 120초
   cookie.setValue("guardian");     // 쿠키값 수정 : totoro -> guardian 수정
   response.addCookie(cookie);      // 쿠키 발행
%>

	<body>
	<h2>쿠키를 생성하는 예제</h2>
	<P>

"<%=cookieName%>" 쿠키가생성 되었습니다.<br>

		<input type="button" value="쿠키의 내용확인" 
		onclick="javascript:location.href='useCookie.jsp'">
	</P>
	</body>
</html>