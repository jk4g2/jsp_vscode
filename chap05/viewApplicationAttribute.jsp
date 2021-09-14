<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<html>
<head>
    <title>application 기본객체 속성보기</title>
</head>
<body>
<%
    Enumeration<String> attrEnum = application.getAttributeNames();

    while(attrEnum.hasMoreElements()){
        String name = attrEnum.nextElement();
        Object value = application.getAttribute(name);
%>
        application 속성 : <b><%=name%></b> = <%=value%> <br>
<%
    }
%>
</body>
</html>
