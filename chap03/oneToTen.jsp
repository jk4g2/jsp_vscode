<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>1부터 10까지 합</title>
</head>
<body>
    <% 
        int sum = 0;
        for(int i =1;i<=10;i++){
            sum += i;
        }
    %>

    1부터 10까지의 합은 : <%=sum%><br>

    <% 
    int sum2 = 0;

    for(int i =11;i<=20;i++){
        sum2 += i;
    }
%>
    11부터 20까지의 합은 : <%=sum2%>

</body>
</html>