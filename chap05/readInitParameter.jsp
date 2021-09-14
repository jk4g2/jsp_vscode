<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<head>
    <title>초기화 파라미터 읽어오기</title>
</head>
<body>
    초기화 파라미터 목록:

    <%
        //getInitParameterNames
        //웹 어플리케이션 초기화 파라미터의 이름 목록을 리턴한다
        //리턴타입: Enumeration<String>
        Enumeration<String> initParamEnum = application.getInitParameterNames();
        while(initParamEnum.hasMoreElements()){
            String initParamName = initParamEnum.nextElement();

            //getInitParameter 
            // 이름이 initParamName 인 웹 어플리케이션 초기화
            //파라미터의 값을 읽어온다. 존재하지않으면
            //null return;

    %>
    <li><%= initParamName %> =
        <%= application.getInitParameter(initParamName) %> 
    </li>
    <%
        }
    %>
</body>
</html>
