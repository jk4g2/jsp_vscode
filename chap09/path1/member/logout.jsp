<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.Cookies" %> <!-- 만든 Cookies -->
<%
    response.addCookie(
        Cookies.createCookie("AUTH", "", "/", 0)
    );
%>
<html>
<head>
    <title>로그아웃</title>
</head>
<body>
    로그아웃하였습니다.
</body>
</html>
