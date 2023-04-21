<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마켓컬리</title>

    <style>
        *{margin: 0; padding: 0; vertical-align: middle;box-sizing: border-box;}
        ul{list-style: none;}
        #wrap{width: 100%;}
        #wrap #header{ width: 100%; display: flex; justify-content: center; align-items: center;height: 100px; background-color: #333; color: #fff;}
        #wrap #header a{color: #fff; font-size: 16px; font-weight: 600; text-decoration: none; margin: 0 10px; }
        #wrap #header a:hover{text-decoration: underline;}
        
        #wrap #main {width: 100%;}
        #wrap #main #section1{width: 100%; height: 100vh; background-color: rgb(190, 224, 230); display: flex; align-items: center; justify-content: center; font-size: 100px; color: #fff;text-transform: uppercase;}
        #wrap #main #section2{width: 100%; height: 100vh; background-color: #c99; display: flex; align-items: center; justify-content: center; font-size: 100px; color: #fff;text-transform: uppercase;}
        #wrap #main #section3{width: 100%; height: 100vh; background-color: #999; display: flex; align-items: center; justify-content: center; font-size: 100px; color: #fff;text-transform: uppercase;}
        #wrap #main #section4{width: 100%; height: 100vh; background-color: #99c; display: flex; align-items: center; justify-content: center; font-size: 100px; color: #fff;text-transform: uppercase;}
        #wrap #main #section5{width: 100%; height: 100vh; background-color: #ccc; display: flex; align-items: center; justify-content: center; font-size: 100px; color: #fff;text-transform: uppercase;}

        #wrap #footer{width: 100%; height: 300px; background-color: #444;display: flex; align-items: center; justify-content: center; font-size: 100px; color: #fff;text-transform: uppercase;}
    </style>
</head>
<body>
    <div id="wrap">
        <script>
            ((para)=>{
                //쿼리스트링 ? 파라미터변수 = 값
                console.log(para);
                let result = para.currentEntry.url.toString().split("=");
                let result2 = para.currentEntry.url.toString().indexOf("=");
                console.log(result);
                console.log(result[1]);
                console.log(result2);
                console.log(result2[1]);
            })(window.location);
        </script>

        <%
            String selectPage =request.getParameter("pageChange");
            //selectPage 값이 빈값이면 null 이면
            if(selectPage==null){
                selectPage="main_page.jsp";
            }
        %>


        <jsp:include page ="./header.jsp" flush="false"/>
        <jsp:include page ="<%= selectPage %>" flush="false"/>
        <jsp:include page ="./footer.jsp" flush="false"/>



    </div>
    
</body>
</html>