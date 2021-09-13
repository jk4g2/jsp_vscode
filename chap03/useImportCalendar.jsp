<%@ page contentType="text/html; charset=UTF-8" %>
<% 
    //스크립트 릿
    java.util.Calendar cal = java.util.Calendar.getInstance();
%>
    <html lang="en">

    <head>
        <title>현재시간</title>
    </head>

    <body>
        오늘은:
        <%= cal.get(java.util.Calendar.YEAR) %>년
        <%= cal.get(java.util.Calendar.MONTH) + 1 %>월
        <%= cal.get(java.util.Calendar.DATE) %>일
    </body>

    </html>