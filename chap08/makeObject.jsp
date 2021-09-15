<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo"/>
<%
    member.setId("cosmo");
    member.setName("가산");
%>

<jsp:forward page="/useObject.jsp"/>