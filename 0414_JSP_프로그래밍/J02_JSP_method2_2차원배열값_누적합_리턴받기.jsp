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

    

    <%!
        static String arrME(int arr[][]){
            int cnt = 0;
            String txt="";
            txt += "<table>";
           
            for(int i =0; i< arr.length; i ++){
                cnt=0;
                txt += "<tr>";
                txt+="<th>" + "배열" + (i+1) +"</th>";

                for(int j = 0; j< arr[i].length; j++){
                  

                    txt+="<td>" +arr[i][j] + "</td>";
                    cnt += arr[i][j];
                }
                
        
                txt+= "<td>" + cnt + "</td></tr>";

            }
            txt += "</table>";
            return txt;
        }

    %>

    <%
    int [][] arr = {
        {1,2,3,4,5},
        {6,7,8,9,10},
        {11,12,13,14,15},
        {16,17,18,19,20},
        {21,22,23,24,25}
    };
 
    out.println( arrME(arr));



    %>
    <style>
        body{text-align: center;}
        table{ width: 400px; margin: 0 auto; border-collapse:collapse ;}
        table td{ height: 40px; text-align: center; border: 1px solid #ccc; font-size: 15px; color: #c33;}
      
    </style>
</body>
</html>