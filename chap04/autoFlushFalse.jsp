<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page buffer = "24kb" autoFlush= "False" %>

<html>
<head>
    <title>Document</title>
</head>
<body>
    <% 
        for(int i =0;i < 1000; i++){ %>
            1234
    <%  } %>
<br>
        <%= out.getBufferSize()%><br>
    <%= out.getRemaining() %> <br>

</body>
</html>