<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
    String name = request.getParameter("name");
    String value = request.getParameter("value");

    if(name != null && value != null){
        application.setAttribute(name,value);
    }
%>
<html>
<head>
    <title>application 속성 설정</title>
</head>
<body> 
    <%
        if(name!= null && value != null){
    %>
        application 기본 객체의 속성 설정:<br>
        <%=name%> = <%= value%>
    <%}else {%>
    application 기본 객체 속성 설정안함
    <% } %>

</body>
</html>
