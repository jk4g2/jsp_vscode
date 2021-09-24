<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
    <title>함수 사용</title>
</head>
<body>
    <c:set var="str1" value="<a>Functions <태그>를 사용합니다   .</a>" />
    <c:set var="str2" value="사용" />
    <c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />

    str:1 <a>Functions<태그>를 사용합니다</a><br/>
    str2: 사용<br/>
    tokens: 1,2,3,4,5,6,7,8,9,10<br/> <br/> <br/>



    <!--좌우 공백문자를 제거 -->
    trim(str1) = "${fn:trim(str1)}"<br><br>

    <!--str1스트링안에 공백란은 다 '-'로 바꿈-->
    replace(str1,src,dest) = "${fn:replace(str1," ","-")} <br><br>

    <!--st1에서 str2가 위치한 인덱스를 구한다-->
    indexOf(str1,str2) = "${fn:indexOf(str1,str2)}"<br><br>

    <!--<a>Fun로 시작하면 true 반환 아닐경우 false 반환 -->
    startsWith(str1, '<a>Fun') = "${fn:startsWith(str1,'<a>Fun')}"<br><br>
    
    <!--<a>Fun로 끝나면 true 반환 아닐경우 false 반환 -->
    endsWith(str1, '<a>Fun') = "${fn:endsWith(str1,'<a>Fun')}"<br><br>
    
    <!--str1에 str2가 포함되어 있으면 true반환 아닐경우 false 반환-->
    contains(str1,str2) = "${fn:contains(str1,str2)}"<br><br>
    <!--str1에 대소문자 구분 없이str2가 포함되어 있으면 true반환 아닐경우 false 반환-->
    containsIgnoreCase(str1,'tions') = "${fn:containsIgnoreCase(str1,'tions')}"<br><br>

    <!--array에 저장된 문자열을 합친다. 이때 각 문자열 사이에는 '-'가 붙는다 -->
    <c:set var="array" value="${fn:split(tokens,',')}" />
    join(array,"-") = "${fn:join(array,"-")};<br><br>

    <!--xml 객체 참조에 해당하는 특수문자를 처리한다. -->
    escapeXml(str1) = "${fn:escapeXml(str1)}" <br/><br>


    length(str1) = ${fn:length(str1)} <br>
    toUpperCase(str1) = "${fn:toUpperCase(str1)}" <br>
    toLowerCase(str1) = "${fn:toLowerCase(str1)}" <br>
    
    
    <!-- 6부터 9 이전까지 -->
    substring(str1,6,9) = "${fn:substring(str1,6,9)}" <br>
    
    <!--str1에서 str1이 포함 되어 있는 str2 이후의 문자를 구함-->
    substringAfter(str1, str2) = "${fn:substringAfter(str1, str2)}" <br>
    <!--str1에서 str1이 포함 되어 있는 str2 이전의 문자를 구함-->
    substringBefore(str1, str2) = "${fn:substringBefore(str1, str2)}" <br>
</body>
</html>