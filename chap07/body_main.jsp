<%@ page contentType="text/html; charset=UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
    <title>INFO</title>
</head>
<body>
    include 전 name 파라미터 값: <%= request.getParameter("name")%>
    <hr>
        <jsp:include page="body_sub.jsp" flush="flase">
            <!--새로 추가한 값이 우선시됨-->
            <jsp:param name="name" value="코스모"/>
        </jsp:include>
    <hr/>
    include 후 name 파라미터 값:  <%= request.getParameter("name")%>
</body>
</html>