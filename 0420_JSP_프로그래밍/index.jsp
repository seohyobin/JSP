<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="./css/style.css">
    <title>TODO LIST</title>
    
</head>
<body>
    <div id="wrap">
        <div class="top">
            <a href="./todo_list_view.jsp">글목록</a>
        </div>
        <form autocomplete="off" method="POST" id="todoListForm" name="todo_list_form" action="./todo_list_write.jsp" >
            <table>
                <tr>
                    <th>TODO LIST</th>
                </tr>
                <tr>
                    <td><input type="text" name="todo" id="toDo" placeholder="TO DO LIST!!!"></td>
                </tr>
            </table>
            <button type="submit">저장</button>
        </form>
    </div>
</body>
</html>