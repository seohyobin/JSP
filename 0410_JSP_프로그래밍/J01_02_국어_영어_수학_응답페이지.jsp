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
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{margin: 0; padding: 0; vertical-align: middle; box-sizing: border-box;}
        #wrap{width: 100%;}
        #wrap .container{width: 100%; max-width: 800px; margin: 0 auto; padding: 130px 0 0 0;}
        #wrap .container .title{width: 100%; text-align: center; padding: 0 0 20px 0;}
        #wrap .container .title h1{width: 100%;}
        #wrap .container table{border-collapse:collapse ; width: 100%;}
        #wrap th{height: 50px; border-bottom: 1px solid #999; border-top:1px solid #000 ;}
        #wrap td{height: 50px; text-align: center; border-bottom: 1px solid #ccc;}
    </style>
</head>
<body>
    <%
    int korean_sc = Integer.parseInt(request.getParameter("korean_sc"));
    int math_sc = Integer.parseInt(request.getParameter("math_sc"));
    int english_sc = Integer.parseInt(request.getParameter("english_sc"));
    int sum = korean_sc+math_sc+english_sc;
    double avg = sum/3.0;
    %>

    <%
        out.println("<table>");
        out.println("<tr>");
        out.println("<td>"+ String.format("국어%3d",korean_sc) +"</td>");
        out.println("<td>"+ String.format("영어%3d",english_sc) +"</td>");
        out.println("<td>"+ String.format("수학%3d",math_sc) +"</td>");
        out.println("<td>"+ String.format("총점%3d",sum) +"</td>");
        out.println("<td>"+ String.format("평균%3.2f",avg) +"</td>");

        out.println("</tr>");
        out.println("</table>");
    %>
    <div id="wrap">
        <div class="container">
            <div class="title">
                <h1>성적 확인</h1>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>국어</th>
                        <th>수학</th>
                        <th>영어</th>
                        <th>총점</th>
                        <th>평균</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <%= korean_sc %>
                        </td>
                        <td>
                            <%= math_sc %>
                        </td>
                        <td>
                            <%= english_sc %>
                        </td>
                        <td>
                          <%= sum %>
                        </td>
                        <td>
                            <%= avg %>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


    
</body>
</html>