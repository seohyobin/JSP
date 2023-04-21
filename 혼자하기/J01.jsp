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
        static String arrME (int arr[][]){
        int cnt = 0;
        String t= "";
        t+="<table>";
            t+="<tr>";
            for(int i =0; i < arr.length; i++){
                cnt=0;
             
                t+="<th>" + "배열" + (i+1) +  "</th></tr>";
         
                for(int j =0; j< arr[i].length; j++){
                    cnt+=arr[i][j];
                    t+= "<tr><td>" + arr[i][j] + "</td>";
                }
                t+="<td>" + cnt + "</td></tr>";
            }
            t+="</table>";
            return t;
        }

    %>
    <%
        int[][] arr ={
            {1,5,69,52,4},
            {5,6,8,941,1},
            {56,8,94,7,1}
        };
        out.println(arrME(arr));
    
    %>
</body>
</html>