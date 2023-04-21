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
    <title>혼자하기</title>
    <style>
        *{padding: 0; margin: 0; vertical-align: middle; box-sizing: border-box;}
        ul{list-style: none;}
        #wrap{width: 100%;}
        #wrap #header{width: 100%; height: 100px; display: flex; justify-content: center; align-items: center; background-color: rgb(152, 152, 152); color: #fff;}
        #wrap #header a{margin: 0 10px; font-size: 16px; font-weight: 600;text-decoration: none; color: #fff; }
        #wrap #header a:hover{text-decoration: underline;}
        #wrap #main{width: 100%;}
        #wrap #main #section1{width: 100%; height: 100vh; background-color: rgb(140, 166, 183); display: flex; justify-content: center; align-items: center; font-size: 100px; text-transform: uppercase; color: #fff; font-weight: 600;}
        #wrap #main #section2{width: 100%; height: 100vh; background-color: rgb(102, 100, 155); display: flex; justify-content: center; align-items: center; font-size: 100px; text-transform: uppercase; color: #fff; font-weight: 600;}
        #wrap #main #section3{width: 100%; height: 100vh; background-color: rgb(106, 135, 122); display: flex; justify-content: center; align-items: center; font-size: 100px; text-transform: uppercase; color: #fff; font-weight: 600;}
        #wrap #main #section4{width: 100%; height: 100vh; background-color: rgb(91, 91, 91); display: flex; justify-content: center; align-items: center; font-size: 100px; text-transform: uppercase; color: #fff; font-weight: 600;}
        #wrap #main #section5{width: 100%; height: 100vh; background-color: rgb(119, 131, 165); display: flex; justify-content: center; align-items: center; font-size: 100px; text-transform: uppercase; color: #fff; font-weight: 600;}
        #wrap #footer{width: 100%; height: 350px; background-color: #000; font-size: 100px; color: #fff; display: flex; justify-content: center; align-items: center; }
    </style>
</head>
<body>
    <div id="wrap">
        <script>
            ((para)=>{
                console.log(para);
            })(window.navigation);
        </script>
        <%
            String selectPage = request.getParameter("pageChange");
            if(selectPage==null){
                selectPage="main.jsp";
            }
        %>
       
       <jsp:include page="./header.jsp" flush="false"/>
       <jsp:include page="<%= selectPage %>" flush="false"/>
       <jsp:include page="./footer.jsp" flush="false"/>
    </div>
</body>
</html>