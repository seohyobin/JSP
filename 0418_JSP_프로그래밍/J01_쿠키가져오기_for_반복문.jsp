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
        *{padding: 0; margin: 0; vertical-align: middle; box-sizing: border-box; }
        body{text-align: center; background-color: #fff;}
        h1{font-weight: 600; font-size: 120px; padding: 250px 0 0 0; }
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

    <h1><span class="coo-4">쿠</span><span class="coo-1">키</span><span class="coo-2">가</span><span class="coo-3">져</span><span class="coo-4">오</span><span class="coo-1">기</span></h1>

    <%
        //1.쿠키(요청) 가져오기(getCookies();) 생성자 생성
        Cookie[] item = request.getCookies();

        for(int i=0; i< item.length; i++){
            out.println(item[i] + "<br>");
            out.println(item[i].getName() + "  " +  item[i].getValue() + "<br>" );
        }


        out.println("<br>");
        out.println("<br>");
        out.println("<br>");
        for(int i=0; i< item.length; i++){
            out.println(item[i] + "<br>");

            //조건문 JANE_cookie2 만 검색


            if(item[i].getName().equals("JANE_cookie2")){
                out.println(item[i].getName() + "  " +  item[i].getValue() + "<br>" );

            }   
        }
    
    %>

    
</body>
</html>