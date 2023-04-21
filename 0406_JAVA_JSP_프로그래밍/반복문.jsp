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
    <title>Document</title>
</head>
<body>
    <h1>반복문 구현하기</h1>
   
    <%
         String[] str_arr = {"JAVA","JSP","REACT","NODE","SASS","PHP","VUE","JQUERY","JAVASCRIPT","TYPESCRIPT"};
    %>

    <h3>문자열 배열 생성하기 for 문</h3>
    <% 
        for(int i=0; i<str_arr.length; i++){
            out.println( "<p style='background:#f7f7f7;'><em style='font-style: normal; color:#08a; font-size: 25px;'>str_arr[" + i + "] 배열의 값은 : " + str_arr[i] + "</em></p>"); 
        }
    %>
    <h3>문자열 배열 생성하기 while 문</h3>
    <%
    
    int i =-1;
     while(i<str_arr.length-1){
        i++;
        out.println( "<div><i>str_arr[" + i + "] 배열의 값은 : " + str_arr[i] + "</i></div>"); 
        out.println( "<div><i>str_arr[" + i + "] 배열의 값은 : " + str_arr[i] + "</i></div>"); 
     }
    %>

</body>
</html>