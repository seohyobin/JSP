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
        


  
    %>


    <%

    String result = "";
        result += "<p>아이디 : " + id + "</p>";
        result += "<p>비밀번호 : " + pw + "</p>";
        result += "<p>비밀번호확인 : " + pw_ok + "</p>";
        result += "<p>이름 : "+ name + "</p>";
        result += "<p>이메일 : "+ e_mail + "</p>";
        result += "<p>주소 : "+ addr + "</p>";
        result += "<p>성별 : "+ gender + "</p>";
        result += "<p>생년월일 : "+ birth + "</p>";
        result += "<p>추가 : "+ add + "</p>";

        out.println(result);

    %>

</body>
</html>
