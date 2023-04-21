<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
    //폼 전송 받은 한글이 깨짐현상 셋팅 인코딩
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>폼 전송 응답 페이지</title>
    <style>
        table{width: 50%; margin: 0 auto; border-collapse: collapse ;}
        th,td{border: 1px solid #ccc; height: 50px;}
        td{text-align: center;}
        td em{color: #ccc; font-weight: 600;font-size: 25px;}
        td i{color: #c99; font-weight: 600; font-size: 25px;}
    </style>
</head>
<body>

<div id="wrap">

    <%
        String user_name = request.getParameter("user_name");
        //나이 데이터 정수형 숫자로 변환하기
        //String user_age  = request.getParameter("user_age");
        //Integer.parseInt(문자형 숫자 넣어줭~);
        int user_age  = Integer.parseInt(request.getParameter("user_age"));
    %>

    <table>
        <thead>
            <tr>
                <th>이름</th>
                <th>나이</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <%= user_name %>
                </td>
                <td>
                    <%= user_age %>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%
                        if(user_age>=20){
                          out.println("회원가입 <i>가능한</i> 나이입니다.");
                        }
                        else{
                            out.println("<em> 미성년자로서</em><br>회원가입 <i>불가능한</i> 나이입니다.");
                        }
                    %>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%
                        if(user_age>=20){
                    %>
                        
                          회원가입 <i>가능한</i> 나이입니다.
                    <%   
                        }
                        else{
                    %>
                            <em> 미성년자로서</em><br>회원가입 <i>불가능한</i> 나이입니다.
                    <%        
                        }
                    %>

                </td>
            </tr>
        </tbody>
    </table>
</div>

</body>
</html>