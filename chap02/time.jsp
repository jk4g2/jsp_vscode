<%@ page contentType="text/html; charset=UTF-8" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>현재시간</title>
    </head>

    <body>
    <!--주석처리-->
    <% String bookTitle="JSP 프로그래밍" ; //hi /* hello world*/ %>
    <%-- Date는 일반부--%>
        <b>
            <%= bookTitle %>
        </b>공부합니다 <br>

        오늘의 날짜와 현재 시간은 : <%= new java.util.Date() %>


    </body>

    </html>