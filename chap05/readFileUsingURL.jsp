<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<%@ page import = "java.net.URL" %>
<head>
    <title>상대 경로 사용하여 자원 읽기 </title>
</head>
<body>
    <%
        //application.getResource(resourcePath)
        //return type이 java.net.URL임 
        //어플리케이션 내에서 지정한 경로에 해당하는 자원의 시스템상에서의 경로.
        
        String resourcePath = "/message/notice.txt";

        char[] buff = new char[128];
        int len = -1;


        ////application.getResource(resourcePath)
        //어플리케이션 내에서 지정한 경로에 해당하는 자원에 접근할수 있는 URL 객체를 리턴한다.
        URL url = application.getResource(resourcePath);
        //out.println(url);
        %>
       <br>
       <% 
        try(InputStreamReader fr = new InputStreamReader(url.openStream(),"utf-8")){
            while((len = fr.read(buff))!=-1){
                out.print(new String(buff,0,len));
            }
        }catch(IOException ex){
            out.println("익셉션 발생 : " + ex.getMessage());
        }

    %>
</body>
</html>
