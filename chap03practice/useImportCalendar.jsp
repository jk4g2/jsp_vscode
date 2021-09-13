<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.util.Calendar"%>

<% Calendar cal = Calendar.getInstance(); %>
<html lang="en">

<head>
    <title>현재시간</title>
</head>

<body>
    오늘은:

    <%= cal.get(Calendar.YEAR) %>년
    <%= cal.get(java.util.Calendar.MONTH) + 1 %>월
    <%= cal.get(java.util.Calendar.DATE) %>일
</body>

</html>