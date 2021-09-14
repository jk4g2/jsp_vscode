<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<head>
    <title>절대 경로 사용하여 자원읽기</title>
</head>
<body>
    <%
        char[] buff = new char[128];
        int len = -1;

        String filePath = "C:\\Tomcat-8.5\\webapps\\chap05\\message\\notice.txt";
        try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath),"utf-8")){
            while((len = fr.read(buff))!=-1){
                out.print(new String(buff,0,len));
            }
        }catch(IOException ex){
            out.println("익셉션 발생 : " + ex.getMessage());
        }

    %>
</body>
</html>
