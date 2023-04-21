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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쿠키설정</title>
    <style>
        *{padding: 0; margin: 0; vertical-align: middle; box-sizing: border-box;}
        body{text-align: center; background-image: url(./munching-blue-cookie-monster-s8yhymbf3plqk5pz.jpg);}
        h1{font-weight: 600; font-size: 120px; padding: 400px 0 0 0; }
        img{width: 100px; height: 100px; }
        .coo-1{
            color: blue;
        }
        .coo-2{
            color: red;
        }
        .coo-3{
            color: yellow;
        }
        .coo-4{
            color: green;
            
        }
    </style>
</head>
<body>

    <h1><span class="coo-4">쿠</span><span class="coo-1">키</span><span class="coo-2">설</span><span class="coo-3">정</span><span class="coo-4">  쿠</span><span class="coo-1">키</span><span class="coo-2">삭</span><span class="coo-3">제</span></h1>


<%
    //1.쿠키 생성 :3개

    
    //////1
    Cookie newCookie1 = new Cookie("JANE_cookie1","첫번째쿠키값입니다");
    newCookie1.setPath("/");
    newCookie1.setMaxAge(60*60*24*1); //1일
    response.addCookie(newCookie1);

    //////2
    Cookie newCookie2= new Cookie("JANE_cookie2","두번째쿠키값입니다");
    newCookie2.setPath("/");   
    newCookie2.setMaxAge(60*60*24*3); //3일
    response.addCookie(newCookie2);

    //////3
    Cookie newCookie3= new Cookie("JANE_cookie3","세번째쿠키값입니다"); 
    newCookie3.setPath("/");
    newCookie3.setMaxAge(60*60*24*7); //7일
    response.addCookie(newCookie3);


    //////쿠키삭제 (newCookie3) 
    //만료일을 0으로 설정하면 삭제 가능  .setMaxAge(0);
    //쿠키3 추가되면 날짜설정이 0 삭제된다

    newCookie3.setMaxAge(0);
    response.addCookie(newCookie3); 
 

%>

    
</body>
</html>