<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <title>회원가입 인력 폼</title>
</head>
<body> 
    <form action="/chap08/processJoining.jsp" method="POST">
    <table>
        <tr>
            <td>아이디</td>
            <td colspan="3"><input type="text" name="id" size="10"></td>
        </tr>
        <tr>
            <td>이름:</td>
            <td><input type="text" name="name" size="10"></td>
            <td>이메일</td>
            <td><input type="text" name="email" size="10"></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <input type="submit" value="회원가입">
            </td>
        </tr>
    </table>
</form>
</body>
</html>