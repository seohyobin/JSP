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
        body{text-align: center; background-color: #fff;}
        h1{font-weight: 600; font-size: 150px; padding: 130px 0 0 0;}
        img{width: 120px; height: 120px; }
    </style>
</head>
<body>

    <h1><img src="./01f937f754a2af762f3218c7fc3fba61.jpg" alt=""> 쿠키 설정 하기 <img src="./01f937f754a2af762f3218c7fc3fba61.jpg" alt=""></h1>


<%
    //1.쿠키를 설정(생성) 한다.
    //Cookie newCookie = new Cookie("키(key)","값(value)");
    
    Cookie newCookie = new Cookie("JANE_cookie1","첫번째쿠키값입니다");
    response.addCookie(newCookie); //쿠키 추가하기


    Cookie newCookie2= new Cookie("JANE_cookie2","두번째쿠키값입니다");
    newCookie2.setPath("/");     //path=/   패스설정!!
    response.addCookie(newCookie2);


    Cookie newCookie3= new Cookie("JANE_cookie3","세번째쿠키값입니다"); 
    newCookie3.setPath("/");
    newCookie3.setMaxAge(60*60*3);
    response.addCookie(newCookie3);

    Cookie newCookie4= new Cookie("JANE_cookie4","네번째쿠키값입니다"); 
    newCookie4.setPath("/"); 
    newCookie4.setMaxAge(60*60*1);  
    response.addCookie(newCookie4);
    //newCookie4.setMaxAge();     //만료일 (expires Maxage ) 60초*60분*24시간->하루
    //newCookie4.setMaxAge();   //만료일 (expires Maxage ) 60초*60분*24시간*3->3일
   

%>

    
</body>
</html>