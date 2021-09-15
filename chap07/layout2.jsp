<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>layout1</title>
</head>
<body>
    <table width ="400" border="1" cellpadding="0" cellspacing ="0">
        <tr>
            <td colspan="2">
                <jsp:include page="/module/top.jsp" flush="flase"/>
            </td>
        </tr>
        <tr>
            <td width= "100" valign="top">
                <jsp:include page="/module/left.jsp" flush="false"/>
            </td>
            <td width="300" valign="top">
                <!-- 내용 부분 : 시작 -->
                이 부분은 레이아웃2.jsp 가 생성 합니다.<br>
                레이아웃2
                <br><br><br>
                <!-- 내용 부분 : 종료 -->
            </td>
        </tr>
        <tr>
            <td colspan = "2">
                <jsp:include page="/module/bottom.jsp" flush="false"/>
            </td>
        </tr>
    </table>
    
</body>
</html>
