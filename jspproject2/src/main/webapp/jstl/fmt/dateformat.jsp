<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head><title>formatDate 태그</title></head>
<body>

<c:set var="now" value="<%= new Date() %>" />
현재 날짜1 : ${now }<br>
현재 날짜2 : <c:out value="${now }"/><br><br>

<fmt:formatDate value="${now }"/><br>
<fmt:formatDate value="${now}" type="date" dateStyle="full" /><br>
<fmt:formatDate value="${now}" type="date" dateStyle="short" /><br>
<fmt:formatDate value="${now}" type="time" /><br>
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" /><br>
<fmt:formatDate value="${now}" pattern="z a h:mm" /><br><br>

<!-- 12시간제 날짜, 시간 출력 -->
<fmt:formatDate value="${now }" pattern="yyyy-MM-dd a hh:ss:mm EEE요일"/><br><br>

<!-- 24시간제 날짜, 시간 출력 -->
<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss EEE요일"/>
</body>
</html>




