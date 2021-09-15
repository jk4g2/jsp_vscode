<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%
    //얘네는 버퍼가아님
    Calendar cal = Calendar.getInstance();
    request.setAttribute("time",cal);
    //out.println(cal);
%>
<jsp:forward page="/to/viewTime.jsp" />