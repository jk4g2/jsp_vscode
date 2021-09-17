<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.Cookies" %> <!-- 만든 Cookies -->
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    if(id.equals(password)){
        //id와 암호가 같으면 로그인 성공
        response.addCookie(
            Cookies.createCookie("AUTH",id,"/",-1)
        );//-1이면 브라우저 닫을떄까지
%>


<html> 
<head>
    <title>로그인 성공</title>
</head>
<body>
    로그인에 성공했습니다.
</body>
</html>
<%
    }else{//로그인 실패시
%>
<script>
    alert("로그인 실패하였습니다");
    history.go(-1);
</script>
<%
    }
%>