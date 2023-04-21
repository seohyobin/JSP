<%@
page
language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>
<%@
    page import = "java.sql.*"
%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hyobin" , "root" , "1234");
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM signup");
 %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up view</title>
    <link rel="stylesheet" href="./css/view.css">
</head>
<body>
    <div id="wrap">
        <h1>회원가입정보</h1>
        <div class="top">
            <a href="./index.jsp">글작성</a>
        </div>
        <table>
            <tr>
                <th>글번호</th>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>성별</th>
                <th>가입경로</th>
                <th>주소</th>
                <th>메모</th>
                <th>작성일</th>
            </tr>

            <%
                while(rs.next()){
            %>
            <tr>
                <td><%= rs.getString("idx")%></td>
                <td><%= rs.getString("id")%></td>
                <td><%= rs.getString("pw")%></td>
                <td><%= rs.getString("gender")%></td>
                <td><%= rs.getString("how")%></td>
                <td><%= rs.getString("address")%></td>
                <td><%= rs.getString("memo")%></td>
                <td><%= rs.getDate("signup_date")%></td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
</body>
</html>