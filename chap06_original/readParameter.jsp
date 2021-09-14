<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="/error/viewErrorMessage.jsp"%>
<html>
<head>
    <title>에러 발생</title>
</head>
<body>
    요청 처리 과정에서 에러가 발생하였습니다.<br>
    빠른 시간 내에 문제를 해결하도록 하겠습니다.

    <p>
        name 파라미터값 <%= request.getParameter("name").toUpperCase()%>
</body>
</html>             
