<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setAttribute("name","코스모");
%>
<html>
<head>
    <title>EL Object</title>
</head>
<body>
    요청 URI : ${pageContext.request.requestURI}<br>
    request의 name 속성: ${requestScope.name}<br>
    request의 name 속성: ${name}<br><!--이것도 requestScope.name이랑 같이 나오는 이유가 지금 여기에 request 밖에 없기때문이다 -->
    code 파라미터: ${param.code} <!-- url 뒤에 ?code=아무거나 -->
</body>
</html>
