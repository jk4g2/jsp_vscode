<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>                              
<html>
<head>
    <title>상대 결오 사용하여 자원 읽기</title>
</head>
<body>
    <% 
        String resourcePath = "notice.txt";
        char[] buffer = new char[128];
        int len = -1;

        //어플리케이션 내에서 지정한 경로에 해당하는 자원에 접근할 수 있는 URL객체를 리턴
        URL url = application.getResource(resourcePath);
        out.println(url);
    %><br>


        <%
            try(InputStreamReader fr = new InputStreamReader(url.openStream(),"utf-8")){
                while((len = fr.read(buffer))!=-1){
                    out.print(new String(buffer,0,len));
                }
            }catch(IOException ex){
                out.println("익셉션 발생 : " +ex.getMessage());
            }

        %>
</body>
</html>
