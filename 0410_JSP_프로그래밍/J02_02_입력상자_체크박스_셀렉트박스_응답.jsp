<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>관심있는 언어과목 체크박스 응답 페이지</title>
    <style>
        #wrap{width: 100%; max-width: 500px; margin: 0 auto;}
    </style>
</head>
<body>
<%
    String name = request.getParameter("name");
    String[] chk=request.getParameterValues("chk");

%>

<%
out.println("<table>");
out.println("<tr>");
    out.println("<th>" + name + "</th>");
out.println("</tr>");
out.println("<tr>");
    for(int i = 0; i < chk.length; i++){
        out.println("<td>" + chk[i] + "</td>");
    }

out.println("</tr>");
out.println("</table>");
%>


<style>


   
</style>
    
    
</body>
</html>