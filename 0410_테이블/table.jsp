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
    <title>Document</title>
    <style>
        #wrap{width: 100%;}
        #wrap .container{width: 100%; max-width: 1000px; margin: 0 auto;}
        table{border-collapse: collapse ;}
        td,th{border-bottom:1px solid #ccc ;}
    </style>
</head>
<body>
    <div id="wrap">
        <div class="container">
            <div class="title">
                <h1>
                    언어
                </h1>
            </div>
            <div class="content">
                <table>
                    <thead>
                        <tr>
                            <th>
                                이름
                            </th>
                            <th colspan="5">
                                관심있는 과목
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input type="text" id=" name" name="name" placeholder="이름을 입력하세요">
                            </td>
                            <td >
                                <input type="checkbox" name="chk" id="HTML" value="HTML">HTML
                            </td>
                            <td>
                                <input type="checkbox" name="chk" id="CSS" value="CSS">CSS
                            </td>
                            <td>
                                <input type="checkbox" name="chk" id="SASS" value="SASS">SASS
                            </td>
                            <td>
                                <input type="checkbox" name="chk" id="JAVA" value="JAVA">JAVA
                            </td>
                            <td>
                                <input type="checkbox" name="chk" id="JQUERY" value="JQUERY">JQUERY
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>