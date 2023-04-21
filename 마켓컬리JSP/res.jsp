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
    <title>Document</title>
</head>
<body>
    <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String pw_ok = request.getParameter("pw_ok");
    String name = request.getParameter("name");
    String e_mail = request.getParameter("e_mail");
    String hp = request.getParameter("hp");
    String addr = request.getParameter("addr");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String add = request.getParameter("add");
    String [] chk =request.getParameterValues("chk");
    %>

    <div id="wrap">
        <div class="container">
            <div class="title">
                <h1>회원가입 정보</h1>
            </div>
            <div class="content">
                <table>
                    <thead>
                        <tr>
                            <th>아이디</th>
                            <th>비밀번호</th>
                            <th>비밀번호확인</th>
                            <th>이름</th>
                            <th>이메일</th>
                            <th>휴대폰</th>
                            <th>주소</th>
                            <th>성별</th>
                            <th>추가 입력사항</th>
                            <th>이용약관동의</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%= id %></td>
                            <td><%= pw %></td>
                            <td><%= pw_ok %></td>
                            <td><%= name %></td>
                            <td><%= e_mail %></td>
                            <td><%= hp %></td>
                            <td><%= addr %></td>
                            <td><%= gender %></td>
                            <td><%= add %></td>
                            
                                <%
                                for(int i = 0; i< chk.length; i++){
                                    out.println("<td>" + chk[i] + "</td>");
                                }
                                %>
                            
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>