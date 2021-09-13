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

    <!-- getParameter() 는 받을때 무조건 String
    ("이름")-->

    <b>request.getParameter() 메서드 사용</b>
    name 파라미터 = <%= request.getParameter("name") %>
    address 파라미터 = <%= request.getParameter("address") %>
    <p>
        <b>request.getParameterValues() 메서드 사용</b>
        <!-- getParameterValues 는 받을때 무조건 String[]-->
        <%
            String[] values = request.getParameterValues("pet");
            if(values!=null){
                for(int i = 0 ; i < values.length; i++){
        %>
        <%= values[i] %>
    
        <%
                }

            }

        %>
<br>
        <!-- return type은 Enumeration-->
        <!-- getParameterName() 이라는 건 아예 없음 아예
        getParamter() 사용.-->
        <b>request.getParameterNames()메소드 사용</b>
        <%
            Enumeration paramEnum = request.getParameterNames();
            while(paramEnum.hasMoreElements()){
                String name = (String)paramEnum.nextElement();
        %>
        <%=
            name %>
         <% 
        }
        %>
        <br>



    <!-- 브라우저가 전송한 파라미터의 맵을 구한다.
         파라미터 이름, 값 쌍으로 구성
         
        -->        
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
        <br>
        address = <%= addParam[0]%>
        <br>
        pet = 
        <% if(petParam !=null){
            for(int i =0;i < petParam.length; i++){ %>
                <%=petParam[i] %>
            <%}
            }         
        }
    %>

    </p>
</body>
</html>