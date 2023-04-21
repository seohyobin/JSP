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
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user" , "root","1234"); 
    Statement st = conn.createStatement(); 
    ResultSet rs = st.executeQuery("SELECT * FROM todo_list");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/view.css">
    <title> LIST 목록 보기 </title>
</head>
<body>

    <div id="wrap">
        <table>
            <div class="top">
                <a href="./index.jsp">글쓰기</a>
            </div>
            <caption>TODO LIST</caption>
            <thead>
                <tr>
                    <th>글번호</th>
                    <th>할일목록</th>
                    <th>작성날짜</th>
                </tr>
            </thead>
            <tbody>
                
                <%
                    while(rs.next()){
                
                %>


                        <tr>
                            <td><%= rs.getString("idx") %></td>
                            <td><%= rs.getString("todo_list") %></td>
                            <td><%= rs.getDate("create_date") %></td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>

    </div>



</body>
</html>