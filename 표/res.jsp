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
    int row = Integer.parseInt(request.getParameter("row"));
    int col = Integer.parseInt(request.getParameter("col"));
    %>

    <%
        int[][] arr= new int [row][col];

        for(int i =0; i< arr.length; i++){
            for(int j=0; j < arr[i].length; j++){
               arr[i][j]=(int)(Math.random()*26+65);
            }
       
        } 

        for(int i=0; i< arr.length; i++){
            for(int j=0; j< arr[i].length; j++){
                out.println("<tr><td style = "border : 1px solid #333">" + (char)arr[i][j]  + "</td></tr>");
            }
        
            out.println("<br>");
        }


     

    %>
</body>
</html>