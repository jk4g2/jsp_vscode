<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Map"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html lang="en">
<head>
    <title>요청 파라미터 출력</title>
</head>
<body>

    <b>request.getParameterMap() 메서드 사용</b>
    <%
        Map parameterMap = request.getParameterMap();
        String[] nameParam = (String[])parameterMap.get("name");
        String[] addParam = (String[])parameterMap.get("address");
        String[] petParam = (String[])parameterMap.get("pet");
        if(nameParam != null){
    %>
        <br>
        name = <%= nameParam[0] %>
        <%}%>
        <br>
        address = <%= addParam[0]%>
        <br>
        pet = 
        <% if(petParam !=null){
            for(int i =0;i < petParam.length; i++){ %>
                <%=petParam[i] %>
            <%}
            }         
        %>

    </p>
</body>
</html>