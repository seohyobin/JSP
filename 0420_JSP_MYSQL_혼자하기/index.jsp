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
    <title>TODO</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>  
    <div id="wrap">
        <div class="top">
            <a href="./todo_view.jsp">글목록</a>
        </div>
        <form name="todo_form" id="todoForm" method="POST" autocomplete="off" action="./todo_write.jsp">
            <table>
                <tr>
                    <th>TO DO</th>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="name" id="name" placeholder="NAME!!!!!">
                        <input type="text" name="todo" id="toDo" placeholder="TODO!!!!!">
                    </td>
                </tr>
            </table>
            <button type="submit">SAVE</button>
        </form>
    </div>
    
</body>
</html>