<%@page import="javaBean.SimpleBean"%>
<%@ page contentType="text/html; charset=utf-8" %>

<% request.setCharacterEncoding("utf-8");%>

<%
	SimpleBean sb1 = new SimpleBean();
//	sb1.msg = "hi";	// 접근안됨 (private 접근 제어자)
	sb1.setMsg("안녕");
%>

<!-- 자바빈 객체를 생성하는 역할 -->
<jsp:useBean id="sb" class="javaBean.SimpleBean" />

<!-- 자바빈 클래스의 setter메소드를 호출해서 값을 heap메모리에 저장 시켜주는 역할  -->
<%-- <jsp:setProperty name="sb" property="msg" />
<jsp:setProperty property="name" name="sb"/> --%>

<jsp:setProperty property="*" name="sb"/>

<html>
	<body>

	<h1>간단한 자바빈 프로그래밍</h1>
	<br>
	<!--  자바빈 클래스의 getter메소드를 호출해서 리턴된 필드(프로퍼티)를 
	      웹브라우저에 출력해주는 역할-->
	      
	이름: <%=sb.getName() %><br>      
	이름: <jsp:getProperty property="name" name="sb"/><br><br>     
	      
	메세지: <%=sb.getMsg() %><br>
	메시지: <jsp:getProperty name="sb" property="msg" />

	</body>
</html>


