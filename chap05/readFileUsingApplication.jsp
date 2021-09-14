<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<head>
    <title>상대 경로 사용하여 자원 읽기 </title>
</head>
<body>
    <%
        String resourcePath = "/message/notice.txt";
    %>

    자원의 실제 경로: <br>
    <%=
        application.getRealPath(resourcePath)
    %><br>

    ----------------------------------<br>

    <%= resourcePath %>의 내용 <br>
    <%
        char[] buff = new char[128];
        int len = -1;
        //application.getResourceAsStream(resourcePath)
        //웹 어플리케이션 내에서 지정한 경로에 해당하는 자원으로부터 데이터를 
        //읽어올 수 있는 InputStream을 리턴한다
        String filePath = "C:\\Tomcat-8.5\\webapps\\chap05\\message\\notice.txt";
        try(InputStreamReader fr = new InputStreamReader(application.getResourceAsStream(resourcePath),"utf-8")){
            while((len = fr.read(buff))!=-1){
                out.print(new String(buff,0,len));
            }
        }catch(IOException ex){
            out.println("익셉션 발생 : " + ex.getMessage());
        }

    %>
</body>
</html>
