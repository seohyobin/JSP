<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> JSP 스크립트</title>
</head>
<body>
   
    <%
        //내부주석
        //자바코딩 변수 지정 형식 스크립트릿 이라고 함
        //지역변수

        String strName="풀스택 서효빈";

        //반복문
        //for(){}
        //while(){}
        //if(){}
        //출력 표현식
    %>


    <%!
        //선언(!) : 전역변수 선언
        String tit = "전역변수 선언 JSP 자바 <br>서버페이지!!!!<br>";
    %>
    <h1><%= tit %></h1>
  
    <h3>웹개발자 <strong><%= strName %></strong>입니당~</h3>

    <hr>
    <h2><%= strIrum %></h2>


    <jsp:include page="./서브페이지1.jsp" flush="false"/>
    <%@ include file = "./서브페이지2.jsp"%>

    <h2><%= strIrum %></h2>

    <%
        strIrum="김유신";
    %>
    <h2><%= strIrum %></h2>

    
</body>
</html>