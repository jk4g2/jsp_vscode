<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Cookie cookie = new Cookie("onehour", "ltime");
    cookie.setMaxAge(60 * 60);//60초 * 60 = 1시간
    response.addCookie(cookie);
%>
<html>
<head>
    <title>쿠키 유효시간 설정</title>
</head>
<body>

    유효시간이 1시간인 onehour 쿠키 생성

</body>
</html>