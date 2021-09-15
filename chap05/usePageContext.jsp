<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <title>PageContext 기본 객체</title>
</head>
<body>
    <%
        HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
        //getRequest(), getResponse(), getSession()
        //getServletContext() : application 기본객체
        //getServletConfig(), getOut(), getException(), getPage()
    %>

    request 기본 객체와 pageContext.getRequest()의 동일여부<br>
    <!--request 기본객체와 pageContext.getRequest()는 같다는걸 보여주는 예시. -->
    <%= request == httpRequest %>
    
    <br>
    pageContext.getOut() 메서드를 사용한 데이터 출력:
    <% pageContext.getOut().println("안녕하세요");%>



</body>
</html>
