<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    //session.setMaxInactiveInterval(60 * 30); //60초 = 1분  1분 *30 = 30분;
    //setMaxInactive를 사용하고싶으면 invalidate()를 지워야함.
%>


<html>
<head>
    <title>세션 종료</title>
</head>
<body>
    세션을 종료하였습니다.
</body>
</html>
