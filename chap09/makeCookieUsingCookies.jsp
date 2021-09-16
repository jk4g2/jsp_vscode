<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.Cookies"%>
<%
    response.addCookie(Cookies.createCookie("name","코스모"));
    response.addCookie(Cookies.createCookie("id","madvirus","/chap09", -1));
    
%>
<html>
<head>
    <title>Cookies 사용 예</title>
</head>
<body>
    Cookies를 사용하여 쿠키 생성.

</body>
</html>