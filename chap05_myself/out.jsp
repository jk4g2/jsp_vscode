<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush="false"%>
<html>
<head>
    <title>out객체 활용법</title>
</head>
<body>
    <%= out.getBufferSize()%>
    <%= out.getRemaining()%>
    <%= out.isAutoFlush()%>
</body>
</html>
