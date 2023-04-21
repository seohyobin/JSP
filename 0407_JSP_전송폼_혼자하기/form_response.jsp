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
        #wrap{width: 100%; max-width: 1100px; margin: 0 auto; padding: 130px 0 0 0 ;}
        #wrap .title{width: 100%; text-align: center; padding: 0 0 15px 0;}
        #wrap table{ border-collapse:collapse ; width: 100%;}
        #wrap table th{height: 60px; border-bottom:1px solid #eee ; border-top:1px solid #000 ;}
        #wrap table td{height: 60px; border-bottom:1px solid #eee ; text-align: center;}

    </style>
</head>
<body>
    <%
    String student_num =request.getParameter("student_num");
    String student_name =request.getParameter("student_name");
    String student_grade =request.getParameter("student_grade");
    String subject_opt =request.getParameter("subject_opt");
    %>
        <div id="wrap">
            <div class="title">
                <h1>학생정보</h1>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>학번</th>
                        <th>이름</th>
                        <th>학년</th>
                        <th>선택과목</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td> <%= student_num%> </td>
                        <td> <%= student_name%> </td>
                        <td> <%= student_grade%> </td>
                        <td> <%= subject_opt%> </td>
                    </tr>
                </tbody>
            </table>
        </div>
</body>
</html>