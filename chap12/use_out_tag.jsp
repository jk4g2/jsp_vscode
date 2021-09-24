<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.IOException, java.io.*" %>

<html>
<head><title>out 태그</title></head>
<body>
<%
    InputStreamReader reader = null;
    try {
        String path = request.getParameter("path");
        //reader = new FileReader(getServletContext().getRealPath(path));
        reader = new InputStreamReader(new FileInputStream(getServletContext().getRealPath(path)),"UTF-8");
%>
    <pre>
    소스 코드 = <%= path %>
    <c:out value="<%= reader %>" escapeXml="true" />
    </pre>
<%
    } catch(IOException ex){
%>
        에러: <%= ex.getMessage() %>
<%
    } finally {
        if(reader != null)
            try{
                reader.close();
            }catch(IOException ex){}
    }
%>

</body>
</html>
