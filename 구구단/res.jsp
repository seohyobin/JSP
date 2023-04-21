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
    int s =Integer.parseInt(request.getParameter("s"));
    int e =Integer.parseInt(request.getParameter("e"));

    %>


    <div id="wrap">
        <div class="container">
            <h1>구구단 </h1>
                
            <%
             
        
        
            int[][] arr = new int[9][e-s+1]; 
            out.println("<tr>");
    
                for(int j=s; j<=e; j++){
                    out.println("<th>" + j + "단" + " </th>");
                    out.println("<tr>");
                       
                }
                out.println("<br>");
    
    
            for(int i=1; i<=9; i++){
                int col=-1;
                int sum = 0;      
    
              for(int j=s; j<=e; j++){
                col++;
                arr[i-1][col] = j*i; 
                sum=j*i;
    
                out.println("<tr><td>" + j +" * "+ i + " = " +sum + "</td></tr>" );
               
              }
              out.println("<br>");
            }
    
    
        %>



        </div>
    </div>

    <style>
        #wrap{width: 100%; max-width: 800px; margin: 0 auto;}
         #wrap .container{width: 100%;  padding: 100px 0 0 0;}
        h1{text-align: center;}
        #wrap .container th{width: 100%; height: 45px; border-bottom:1px solid #999 ; border-top: 1px solid #666 ; }
        #wrap .container td{width: 100%; height: 45px;  text-align: center; border-bottom:1px solid #999 ;}
    </style>
    
</body>
</html>