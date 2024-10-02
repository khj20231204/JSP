<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String writer = request.getParameter("writer");
	String passwd = request.getParameter("passwd");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	// replace("\n", "<br>"); : \n을 <br>태그로 치환 시킨다.
	String contents = request.getParameter("content").replace("\n","<br>");	
%>  

작성자 : <%=writer %><br>
비밀번호 : <%=passwd %><br>
제목 : <%=subject %><br>
내용01 : <%=content %><br>
내용02 : <pre><%=content %></pre><br><br>

내용03 : <br><%=contents %>




  