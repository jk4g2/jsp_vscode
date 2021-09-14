<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<html>
<head>
    <title>상대경로 사용하여 txt읽기</title>
</head>
<body>
    <%
        String resourcePath = "/notice.txt";
    %>

    실제경로<br>
    <%//상대경로만 주어졌을경우 밑에 방식으로 절대경로를 구함 %>
    <%= application.getRealPath(resourcePath)%><br>

    --------------------------------------------<br>
    <%
        //웹 어플리케이션 내에서 지정한 경로에 해당하는 자원으로부터 데이터를
        // 읽어올 수 있는 inputStream을 리턴한다.
        char[] buffer = new char[128];
        int len = -1;
        try(InputStreamReader fr = new InputStreamReader(application.getResourceAsStream(resourcePath),"utf-8")){
            while((len=fr.read(buffer))!=-1){
                out.print(new String(buffer,0,len));
            }
        }catch(IOException ex){
            out.println("익셉션 발생: " +ex.getMessage());
        }


    %>



</body>
</html>
