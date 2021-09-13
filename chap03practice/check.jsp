<%@ page contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<% 
    String id = request.getParameter("id");
    String pass = request.getParameter("password");

    if(id.equals("hi")){
        if(pass.equals("hi")){
            response.sendRedirect("success.jsp");
        }else{
            response.sendRedirect("failed.jsp");
        }
    }else{
        response.sendRedirect("failed.jsp");
    }
%>
