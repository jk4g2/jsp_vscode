<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<html>
<head>
    <title>현재시간</title>
</head>
<body>
    <%
        Calendar cal = (Calendar)request.getAttribute("time");
    %>
    현재시간은 
    <%= cal.get(Calendar.HOUR) %>시
    <%= cal.get(Calendar.MINUTE) %>분
    <%= cal.get(Calendar.SECOND) %>초
</body>
</html>