<!-- page : 디렉티브  ex. taglib, include -->
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page buffer="1kb" %>
<%@ page errorPage = "/error/viewErrorMessage.jsp" %>
<html>
<head><title>버퍼 플러시 이후 에러 발생 결과</title></head>
<body>
<%  for(int i= 0; i<500; i++){out.println(i);}     %>

<%-- 에러 페어지는 버퍼가 플러시 되기 전에 처리되어야 한 다 --%>
<%-- 자바에서는 0으로 나누면 ArithmeticException이 발생  --%>   
<%= 1/0 %>
</body>
</html>