<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%> 
<%@
    page 
    import ="java.sql.*"
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>address table</title>
</head>
<body>

    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hyobin","root","1234");
        Statement stmt = conn.createStatement();
    %>

    <table>
        <tr>
            <th>이름</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>작성일</th>
        </tr>
    <%
        //signin 테이블 데이터 가져오기 
        ResultSet rs = stmt.executeQuery("select * from address");
        
            while(rs.next()){
     %>             

        <tr>
            <td>
                <%=rs.getString("name")%>
            </td>
            <td>
                <%=rs.getString("ph")%>
            </td>
            <td>
                <%=rs.getString("addr")%>
            </td>
            <td>
                <%=rs.getString("create_date")%>
            </td>
        </tr>

    <%

            }

    %>
    </table>
    
    <style>
        table{margin: 130px auto; border-collapse:collapse ; }
        td,th{border: 1px solid #ccc; height: 40px; padding: 0 30px;}
    </style>
    
</body>
</html>