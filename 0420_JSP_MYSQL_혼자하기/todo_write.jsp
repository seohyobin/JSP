<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%
    request.setCharacterEncoding("UTF-8");
    String todo =request.getParameter("todo");
    String name =request.getParameter("name");
%>

<%@
    page
    import = "java.sql.*"
%>

<%
    Class.forName ("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/hyobin" , "root" , "1234");
    Statement st = conn.createStatement();
    
    String sql ="INSERT INTO todo(todo,name) VALUES(?,?)";

    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setString(1, todo );
    ps.setString(2, name );

    ps.executeUpdate();

    ps.close();
    conn.close();
%>

<script>

    location.href="./todo_view.jsp";
</script>


