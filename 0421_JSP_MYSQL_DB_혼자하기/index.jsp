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


        #wrap{width: 100%; max-width: 800px; margin: 100px auto;}
        #wrap form{ width: 100%;}
        #wrap form td{width: 100px;}
        #wrap form td select{width: 508px; height: 50px;}
        #wrap form  td .input{width: 500px; height: 50px; display: block; font-size: 16px;}
        #wrap form  td .radio{margin: 20px 0;}
        #wrap form td .btn{width: 100px; height: 50px; }
        #wrap .top{ width: 100%; max-width: 400px; margin: 0 auto;  padding: 20px 0 0 0 ; text-align: right;}
        #wrap .top a{font-size: 20px; font-weight: 600; color: rgb(152, 152, 152); text-decoration: none;}
        #wrap .top a:hover{color: #000;}
    </style>
</head>
<body>
    <div id="wrap">
        <div class="top">
            <a href="./view.jsp">글목록</a>
        </div>
        <h1>회원가입</h1>
        <form action="./write.jsp" name="sign_up" id="signUp" method="POST" autocomplete="off">
        <table>
            <tr>
                <td>아이디</td>
                <td><input class="input" type="text" name="id" id="id" placeholder="아이디를 입력하세요"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input class="input" type="text" name="pw" id="pw" placeholder="비밀번호를 입력하세요"></td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    남<input class="radio" type="radio" name="gender" id="gender1" value="남">
                    여<input class="radio" type="radio" name="gender" id="gender2" value="여">
                </td>
            </tr>
            <tr>
                <td>가입경로</td>
                <td>
                    <select name="how" id="how">
                        <option value="">가입경로를 선택하세요</option>
                        <option value="인터넷">인터넷</option>
                        <option value="친구">친구</option>
                        <option value="검색">검색</option>
                        <option value="홍보">홍보</option>
                        <option value="선택사항없음">선택사항없음</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input  class="input" type="text" name="address" id="address" placeholder="주소를 입력하세요"></td>
            </tr>
            <tr>
                <td>메모</td>
                <td><input  class="input" type="text" name="memo" id="memo" placeholder="메모를 입력하세요"></td>
            </tr>
            <tr>
                <td><button class="btn" type="submit">가입</button></td>
            </tr>

        </table>
    </form>

    </div>
</body>
</html>