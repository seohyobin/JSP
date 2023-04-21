<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@
    page
    import = "java.sql.*"
%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/hyobin" , "root" , "1234");
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM todo");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/view.css">
    <title>TODO VIEW</title>
</head>
<body>
    <div id="wrap">
        <table>
            <div class="top">
                <a href="./index.jsp">WRITE</a>
            </div>
            <caption>TODO</caption>
            <thead>
                <tr>
                    <th>글번호</th>
                    <th>이름</th>
                    <th>할일</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>


            <%
                while(rs.next()){
            %>
                        <tr>
                            <td><%= rs.getString("idx")%></td>
                            <td><%= rs.getString("name")%></td>
                            <td><%= rs.getString("todo")%></td>
                            <td><%= rs.getDate("create_date")%></td>
                        </tr>

            <%
                }
            %>
            </tbody>
        </table>
    </div>
</body>
</html>