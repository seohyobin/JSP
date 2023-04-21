<%@
    page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #wrap{width:100%; max-width: 600px; margin: 0 auto; padding: 130px 0 0 0;}
        #wrap .title{width: 514px; text-align: center;}
        #wrap form {width: 100%; height: 400px; }
        #wrap form .radio1{ margin: 0 10px 0 0; padding: 0 60px 0 0;}
     
        #wrap form label select{display: block; margin: 20px 0 ; height: 50px; width: 514px; font-size: 16px; text-align: center;}
        #wrap form label .input{width: 500px; height: 50px; margin: 15px 0; padding: 0 0 0 10px; display: block; font-size: 16px;}
        #wrap form label .radio{ padding: 20px 0 ;}
        #wrap form label .btn{ width: 514px; height: 50px; background-color: black; color: #fff; border-radius:3px; border: 0; font-size: 20px;font-weight: 600;}
        #wrap form label .btn:hover{ background-color: #fff; color: #000; border: 1px solid #000;}



      
     
        

    </style>
</head>
<body>
    <div id="wrap">
        <div class="title">
            <h1>학생정보 입력</h1>
        </div>
        <form  name="form_input" id="formInput" method="post" action="./form_response.jsp" >
            <label for="studentNum">
                <input class="input" type="text" name="student_num" id="studentNum" placeholder="학번을 입력하세요" required autofocus>
            </label>
            <label for="studentName">
                <input class="input" type="text" name="student_name" id="studentName" placeholder="이름을 입력하세요" required autofocus>
            </label>
            <label class="radio1">
                <input class="radio" type="radio" name="student_grade" id="1ST" value="1학년" checked>
                1학년
            </label>
            <label class="radio1">
                <input class="radio" type="radio" name="student_grade" id="2ST" value="2학년">
                2학년
            </label>
            <label class="radio1">
                <input class="radio" type="radio" name="student_grade" id="3RD" value="3학년">
                3학년
            </label>
            <label class="radio1">
                <input class="radio" type="radio" name="student_grade" id="4TH" value="4학년">
                4학년
            </label>
            <label for="subjectOpt">
                <select name="subject_opt" id="subjectOpt" required autofocus>
                    <option value="" selected>과목을 선택하세요</option>
                    <option value="영어">영어</option>
                    <option value="수학">수학</option>
                    <option value="과학">과학</option>
                    <option value="국어">국어</option>
                    <option value="사회">사회</option>
                </select>
            </label>
            <label for="">
                <input class="btn" type="submit" value="입력완료">
                
            </label>
        </form>

    </div>
</body>
</html>