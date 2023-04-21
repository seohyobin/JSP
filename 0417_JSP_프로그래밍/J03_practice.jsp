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
    <title>Cookie Practice</title>
    <style>
        *{padding: 0; margin: 0; vertical-align: middle; box-sizing: border-box;}
        body{text-align: center; background-image: url(./munching-blue-cookie-monster-s8yhymbf3plqk5pz.jpg);}
        h1{font-weight: 600; font-size: 120px; padding: 350px 0 0 0; }
        img{width: 100px; height: 100px; }
        h2{color: rgb(172, 180, 230);}
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
    <h1> <span class="coo-4">쿠</span><span class="coo-1">키</span><span class="coo-2">연</span><span class="coo-3">습</span></h1>



    <%
    ///////////////쿠키 생성하기

    Cookie Cookie1 = new Cookie("Cookie1" , "첫번째");
    Cookie1.setPath("/");
    Cookie1.setMaxAge(60*60*3);
    response.addCookie(Cookie1);

    Cookie Cookie2 =new Cookie("Cookie2","두번째"); 
    Cookie2.setPath("/");
    Cookie2.setMaxAge(60*60*24);
    response.addCookie(Cookie2);

    Cookie Cookie3 = new Cookie("Cookie3","세번째");
    Cookie3.setPath("/");
    Cookie3.setMaxAge(60*60*1);
    response.addCookie(Cookie3);

    Cookie Cookie4 = new Cookie("Cookie4","네번째");
    Cookie4.setPath("/");
    Cookie4.setMaxAge(60*60*5);
    response.addCookie(Cookie4);

    Cookie Cookie5 = new Cookie("Cookie5","다섯번째");
    Cookie5.setPath("/");
    Cookie5.setMaxAge(60*60*24*7);
    response.addCookie(Cookie5);

    Cookie Cookie6 = new Cookie("Cookie6","여섯번째"); 
    Cookie6.setPath("/");
    Cookie6.setMaxAge(60*60*24*30);
    response.addCookie(Cookie6);



    /////////////////쿠키 가져오기

    Cookie [] cookies = request.getCookies();
    if(cookies!=null){
        for(Cookie item : cookies){
            String CookieName =item.getName();
            String CookieValue=item.getValue();

            if(CookieName.equals("Cookie5")){
                out.println("<h2>" + CookieName+"<br></h2>");
                out.println("<h2>" + CookieValue+"<br></h2>");
            }
            if(CookieName.equals("Cookie3")){
                out.println("<h2>" + CookieName+"<br></h2>");
                out.println("<h2>" + CookieValue+"<br></h2>");
            }
            if(CookieName.equals("Cookie2")){
                out.println("<h2>" + CookieName+"<br></h2>");
                out.println("<h2>" + CookieValue+"<br></h2>");
            }
            if(CookieName.equals("Cookie1")){
                out.println("<h2>" + CookieName+"<br></h2>");
                out.println("<h2>" + CookieValue+"<br></h2>");
            }
            if(CookieName.equals("Cookie4")){
                out.println("<h2>" + CookieName+"<br></h2>");
                out.println("<h2>" + CookieValue+"<br></h2>");
            }   
        }
    }

    
    %>
</body>
</html>