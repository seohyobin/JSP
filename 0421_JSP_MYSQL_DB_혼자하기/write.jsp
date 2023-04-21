<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%
    request.setCharacterEncoding("UTF-8");
    String id =request.getParameter("id");
    String pw =request.getParameter("pw");
    String gender =request.getParameter("gender");
    String how =request.getParameter("how");
    String address =request.getParameter("address");
    String memo =request.getParameter("memo");
    
%>

<%@
    page
    import = "java.sql.*"
%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn =DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/hyobin" , "root" , "1234");
    Statement st = conn.createStatement();

    String sql ="INSERT INTO signup (id,pw,gender,how,address,memo) VALUES(?,?,?,?,?,?)";

    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setString(1,id);
    ps.setString(2,pw);
    ps.setString(3,gender);
    ps.setString(4,how);
    ps.setString(5,address);
    ps.setString(6,memo);

    ps.executeUpdate();

    ps.close();
    conn.close();
%>

<script>
    location.href="./view.jsp";
</script>