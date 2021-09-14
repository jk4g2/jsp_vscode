<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>파라미터 출력</title>
</head>
<body>
    name 파라미터 값:
    <% try { %>

    <%= request.getParameter("name").toUpperCase()%>
    <% } catch(Exception Ex){ %>
        name 파라미터가 올바르지 않습니다.
    <% } %>
</body>
</html>
