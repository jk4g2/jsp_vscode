<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%

//메모장에서 생성한 세 도메인
/*
    javacan.somehost.com/chap09/viewCookie.jsp
    www.somehost.com/chap09/viewCookie.jsp
    otherdomain.com/chap09/viewCookie.jsp
*/

    //somehost.com 도메인 경우 생성되는지
    Cookie cookie1 = new Cookie("id", "madvirus");
    cookie1.setDomain("somehost.com"); //메모장에서 생성한 곳
    //www.somehost.com/chap09/viewCookie.jsp
    response.addCookie(cookie1);

    //테스트 도메인: http://javacan.somehost.com/chap09/viewCookie.jsp
    //생성한 도메인에서만 생성되는지
    Cookie cookie2 = new Cookie("only", "onlycookie");
    response.addCookie(cookie2);

    Cookie cookie3 = new Cookie("inval", "invalidcookie");

    cookie3.setDomain("javacan.tistory.com");
    //javacan.tistory.com/chap09/viewCookie.jsp
    response.addCookie(cookie3);

%>


<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
    다음과 같이 쿠키를 생성했습니다. <br>
    <%= cookie1.getName()%> = <%= cookie1.getValue() %>
    [<%=cookie1.getDomain() %>]
    <br>
    
    <%= cookie2.getName()%> = <%= cookie2.getValue() %>
    [<%=cookie2.getDomain() %>]
    <br>
    
    <%= cookie3.getName()%> = <%= cookie3.getValue() %>
    [<%=cookie3.getDomain() %>]
    <br>
    
</body>
</html>