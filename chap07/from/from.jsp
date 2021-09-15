<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--
    <jsp:forward> 액션 태그를 실행하면 생성했던 출력결과는 모두 제거 된다.
 --%>
<html>
<head>
    <title>to.jsp의 실행 결과</title>
</head>
<body>
    이 페이지는 from.jsp가 생성하는 것입니다.
    <jsp:forward page="/to/to.jsp" />
</body>
</html>
