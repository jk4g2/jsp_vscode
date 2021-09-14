<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush="false"%>
<head>
    <title></title>
</head>
<body>
    <%= out.getBufferSize()%><br>
    <%= out.getRemaining() %> <br>
    <%= out.isAutoFlush()%>
</body>
</html>
