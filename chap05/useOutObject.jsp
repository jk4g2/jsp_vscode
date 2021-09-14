
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>out 기본객체 사용</title>
</head>
<body>
    <%
        out.println("안녕하세요?");
    %>
    <br>
        out 기본객체를 사용하여
    <%
        out.println("출력한 결과입니다.");
        //print()  데이터를 출력
        //println() : 데이터 출력이후 줄바굼 문자를 출력한다
        //newLine() 줄바꿈문자를 출력한다.
    %>

</body>
</html>