<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <title>서버정보출력</title>
</head>
<body>
    서버정보 : <%= application.getServerInfo() %><br>
    서블릿 규약 메이저 버전 : <%= application.getMajorVersion()%><br>
    서블릿 규약 마이너 버전 : <%= application.getMinorVersion()%><br>
</body>
</html>
