<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>

<html>
<head><title>회원목록</title></head>
<body>
  <h2>회원목록</h2>
  
  <a href="insertTestForm.jsp">회원가입</a>
  <TABLE width="800" border="1">
  <TR>
  	<TD width="100">아이디</TD>
  	<TD width="100">패스워드</TD>
  	<TD width="100">이름</TD>
  	<TD width="250">가입일자</TD>
  	<TD width="100">수정</TD>
  	<TD width="100">삭제</TD>
  </TR>

<%
  Connection con=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;
  ResultSet rs01=null;
  int cnt=0;
  
  try{
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
		 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection(url,user,password);

	pstmt=con.prepareStatement("select count(*) from member1");
	rs01=pstmt.executeQuery();
	if(rs01.next()){	// SQL문을 만족하는 데이터를 가져오면 true가 리턴된다.
		cnt = rs01.getInt(1);
//		cnt = rs01.getInt("count(*)");
	}	
	
	String sql= "select * from member1";
	
	pstmt=con.prepareStatement(sql);
	rs=pstmt.executeQuery();	// select SQL문 실행

	// 회원가입 날자를 연,월,일,시,분,초로 출력 해보세요?
	SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss EEE요일");				
	
	while(rs.next()){	// SQL문을 만족하는 데이터를 가져오면 true가 리턴된다.
	  String id= rs.getString("id");
      String passwd= rs.getString("passwd");
      String name= rs.getString("name");
      Timestamp register=rs.getTimestamp("reg_date");
%>
     <TR>
  	   <TD width="100"><%=id%></TD>
  	   <TD width="100"><%=passwd%></TD>
  	   <TD width="100"><%=name%></TD>
  	   <TD width="250"><%=sd.format(register)%></TD>
  	   <TD width="100">
  	   		<a href="updateTestForm.jsp?id=<%=id%>">수정</a>  	   
  	   </TD>
  	   <TD width="100">
  	   		<a href="deleteTestForm.jsp?id=<%=id %>">삭제</a>
  	   </TD>
    </TR>
<%  } 
  }catch(Exception e){ 
		e.printStackTrace();
  }finally{
	    if(rs != null) try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(con != null) try{con.close();}catch(SQLException sqle){}
  }
%>
</TABLE>

총 회원수:<%=cnt %>명

</body>
</html>