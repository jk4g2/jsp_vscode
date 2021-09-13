<%@ page contentType="text/html; charset=UTF-8" %>

<%!
    public int add(int a, int b){
        return a+b;
    }
    public int substract(int a, int b){
        return a-b;
    }
%>
<html lang="en">
<head>
    <title>스크립트립에서 선언부 사용하기</title>
</head>
<body>
    <%
        int value1 = 3;
        int value2 = 9;
        
        int addResult = add(value1, value2);
        int substractResult = substract(value1, value2);
    %>

    <%= value1 %> + <%= value2%> = <%= addResult %><br>
    <%= value1 %> - <%= value2%> = <%= substractResult %><br>


</body>
</html>