<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<html>
<head>
    <title>절대경로로 txt파일 읽기</title>
</head>
<body>
    <% 
        char[] buffer = new char[128];
        int len= -1;//null일떄 -1

        String filePath = "C:\\Tomcat-8.5\\webapps\\chap05_myself\\notice.txt";
        //try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath),"utf-8")){
        InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath),"utf-8");
        while((len = fr.read(buffer))!= -1){
            out.print(new String(buffer,0,len));
        }
        //}catch(IOException ex){
        //    out.println("익셉션 발생 : " + ex.getMessage());
        //}
    %>
</body>
</html>
