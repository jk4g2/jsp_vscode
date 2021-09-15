<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("utf-8");
%> 
<!-- MemberInfo 자바빈 클래스의 객체를 생성해서 memberInfo 저장한다 . -->
<jsp:useBean id="memberInfo" class="chap08.member.MemberInfo"/>

<!--파라미터 값을 memberInfo 자바빈 객체의 프로퍼티 값으로 저장한다-->
<jsp:setProperty name="memberInfo" property="*"/>
<!--memberInfo 자바빈 객체의 password 프로퍼티 값 을 memberInfo.getId와 
    동일하게 지정한다-->
<jsp:setProperty name="memberInfo" property="password"
    value="<%=memberInfo.getId() %>"/>


<html>
    <head><title>가입</title></head>
<body>
    <table width="400" border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>아이디</td>
            <td><jsp:getProperty name="memberInfo" property="id"/></td>
            <td>비밀번호</td>
            <td><jsp:getProperty name="memberInfo" property="password"/></td>
        </tr>
        <tr>
            <td>이름:</td>
            <td><jsp:getProperty name="memberInfo" property="name"/></td>
            <td>이메일</td>
            <td><jsp:getProperty name="memberInfo" property="email"/></td>
        </tr>
    </table>
</body>
</html>