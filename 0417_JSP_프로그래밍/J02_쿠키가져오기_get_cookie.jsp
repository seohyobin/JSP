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
        h1{font-weight: 600; font-size: 100px; padding: 130px 0 0 0;}
        img{width: 120px; height: 120px; }
    </style>
</head>
<body>

    <h1><img src="./01f937f754a2af762f3218c7fc3fba61.jpg" alt=""> 쿠키 가져오기 (get Cookie) <img src="./01f937f754a2af762f3218c7fc3fba61.jpg" alt=""></h1>


<%
   //쿠키 배열 처리

   //Cookie[] 쿠키 = 요청.겟쿠키();
   Cookie[] cookies = request.getCookies(); //여러개의 쿠키 가져오기
   
   //만약 쿠키가 하나도 없다면 (빈 값 => null)수행 안한다.
   //쿠키가 하나라도 있다면 수행한다.(쿠키값이 널이 아니면)

   //getName();  "JANE_cookie3"
   //getValue(); "세번째쿠키값입니다"



   if(cookies != null){
        for(Cookie item : cookies){
            String cookieName = item.getName(); //쿠키 키 이름을 가져온다.
            String cookieValue = item.getValue(); //쿠키 키 이름을 가져온다.
            //쿠키 이름 (키 KEY) 검색 :"JANE_cookie3"
            if(cookieName.equals("JANE_cookie3") ){
                out.println("찾았음!!!!!!!!! " + "cookieName = " + cookieName + "<br>");
                out.println("찾았음!!!!!!!!! " + "cookieValue =  " + cookieValue);
            }
        
        }
   }

%>  

    
</body>
</html>